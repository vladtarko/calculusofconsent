# libraries
library(shiny)
library(shinydashboard)
library(tidyverse)
library(ggthemes)
library(Cairo)
options(shiny.usecairo = TRUE)

# define user interface
ui <- dashboardPage(
  dashboardHeader(title = "Calculus of Consent"),
  dashboardSidebar(
    sliderInput("h",
                "Homogeneity:",
                min = 1,
                max = 100,
                value = 30),
    shinyWidgets::sliderTextInput("a",
                "Relative effect of homogeneity on external/decision costs:",
                choices = c(0.5, 0.6, 0.7, 0.8, 0.9,
                            1, 2, 3, 4, 5),
                selected = 2),
    sliderInput("E0",
                "Harms of dictatorship:",
                min = 1,
                max = 200,
                value = 100),
    sliderInput("D0",
                "Dictatorship governing costs:",
                min = 1,
                max = 100,
                value = 20),
    checkboxInput("mf_check", label = "Add cost of market failure"),
    sliderInput("mf",
                "Cost of market failure:",
                min = 1,
                max = 200,
                value = 100)
  ),
  dashboardBody(
    tabsetPanel(type = "pills",
      tabPanel("Graph", 
               plotOutput("calculusPlot", width = "700px", height = "500px")),
      tabPanel("Information",
               includeMarkdown("info.md"))
    )
  )
)

# Define server logic required to draw the graph
server <- function(input, output) {
   
   output$calculusPlot <- renderPlot({
      
     ExternalCosts <- function(x) { input$E0 * exp(-x/input$h) }
     DecisionCosts <- function(x) { input$D0 * exp(x/(input$a*input$h)) }
     TotalCosts <- function(x) { ExternalCosts(x) + DecisionCosts(x) }
     Equilibrium <- -(input$a/(1 + input$a)) * input$h * log(input$D0/(input$a * input$E0))
     
     p <- data.frame(x = 0, y = 0) %>% 
     ggplot() +
       aes(x = x, y = 0) +
       stat_function(fun = ExternalCosts, linetype = "dotted", size = 0.7) +
       stat_function(fun = DecisionCosts, linetype = "dotted", size = 0.7) +
       stat_function(fun = TotalCosts, linetype = "solid", size = 0.7) +
       geom_vline(xintercept = Equilibrium) +
       annotate("text", x = 10, y = input$D0 - 2, 
                label = "Decision costs") +
       annotate("text", x = 90, y = ExternalCosts(100) - 2, 
                label = "External costs") +
       annotate("text", x = 7, y = input$D0 + input$E0, 
                label = "Total costs") +
       annotate("text", x = Equilibrium + 2, y = max(TotalCosts(100), TotalCosts(1))-2, 
                label = paste0("Optimum\nconsensus:\n", as.character(round(Equilibrium,0)),"%"),
                hjust = 0) +
       xlim(0, 100) +
       labs(x = "Level of consensus (%)", y = "Costs") +
       theme_tufte(base_size = 18)
    
     if(input$mf_check) {
       p <- p + geom_hline(yintercept = input$mf, linetype = "dashed") +
         geom_label(aes(x = ifelse(Equilibrium < 50, 90, 10), 
                        y = input$mf, 
                        label = "Cost of market failure"), 
                    fill = "white")
     }
     
     p
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

