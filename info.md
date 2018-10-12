### Description

This app produces an interactive version of the basic Buchanan & Tullock's *Calculus of Consent* [(1962, ch. 6)](https://www.econlib.org/library/Buchanan/buchCv3.html?chapter_num=7#book-reader) graphs, based on the formalization proposed by Tarko & O'Donnell (2018).

### License

You can download the graphs produced by this app with right-click and "Save Image". If you're using a graph produced by this app in a paper, please cite as follows:

`Tarko, Vlad. 2018. "Calculus of Consent Shiny Applet". Available at https://tarko.shinyapps.io/calculusofconsent/`

### Basic idea

Any collective decision, taken with a certain **degree of consensus**, *n*, creates some harms to those who disagree with the decision but have to obey it. These harms are known as the **external costs** of the collective decision -- in the sense that those who agree cause an externality upon those who disagree. The higher the degree of consensus, the smaller these harms are. As such, the external costs curve is declining as the level of consensus increases from 0% (dictatorship) to 100% (unanimity).

This being said, achieving a higher degree of consensus is costly. Rather than trying to reach consensus, by debating and bargaining, people could use their time and resources differently. The opportunity cost of reaching a certain degree of consensus is known as the **decision costs**. The higher the level of consensus that we aim to reach, the greater the decision costs become. As such, the decision costs curve is increasing as the level of consensus increases.

What is the optimal level of consensus for a given type of collective decision? To answer this, we simply find the level of consensus for which the **total costs** (i.e. the sum of the external and decision costs) is the lowest. The optimal level of consensus differs depending on the nature of the collective issue, and on the nature of the group taking the decision (how large it is and how heterogeneous it is).

The vertical solid line indicates the optimal level of consensus that generates the minimum total costs.

The **cost of market failure** is the total social costs that occurs if no collective decision is taken with respect to the issue. Such costs can arise from the under-production of public goods, the under-regulation of negative externalities, etc. However, the mere *presence* of a market failure does not automatically entail that the matter should be decided collectively -- this is only the case if the total cost of collective action is lower than the cost of the market failure. The calculus of consent graph allows you to illustrate this.

### Uses of the calculus of consent

There are two main uses for this model. 

1. *Within a political jurisdiction* it tells us *how inclusive* political decision making should be with respect to various issues, and whether it is worth it to try to fix certain types of market failure. Note that not all issues have the same optimal levels of consensus, as both the external costs and the decision costs can differ substantially from one issue to another. Similarly, the costs of market failures differ significantly from one issue to another.

2. *Across jurisdictions* it tell us *how centralized* a certain issue should be. In this case, the external costs describe the inter-jurisdictional externalities, and the decision costs describe the costs of reaching agreement between jurisdictions. In this case, the optimal level of consensus should be interpreted as the optimal size of the jurisdiction with respect to the issue under consideration. For more on this, see [chapter 8](https://www.econlib.org/library/Buchanan/buchCv3.html?chapter_num=9#book-reader) of the *Calculus of Consent*, from the section "Group Size and Decision-Making Costs" onward.

### Meaning of parameters

**Homogeneity** determines *how quickly* the external costs decline and the decision costs increase. To put it differently, how flat the curves are. To get an intuitive feel of this, consider how homogeneity operates upon both types of costs. 

Consider first its effect upon decision costs. If the group is homogeneous, it can reach collective decisions easier, as there are fewer sources of disagreement. This means that, if homogeneity is large, the degree of consensus can be expanded without significant increases in the decision costs. The decision costs curve is flatter (growing slower) for more homogeneous groups, i.e. homogeneous groups reach decisions easier even if they are larger. 

Consider now the influence of homogeneity upon external costs. If a group is homogeneous, there are fewer dissenters, who disagree with (and are harmed by) the group decision. This also means that, when homogeneity is larger, the external costs curve is flatter (declines slower). To understand why, suppose we gradually expand the consensus by adding random people that need to be convinced. The external costs reflect the interests of those *left out* of this consensus group. But if the population is homogeneous, the gains from adding another random person to the consensus group are relatively small because the probability of adding someone with radically different opinions/interests than the existing members of the consensus group is small. In a homogeneous society, we need to add many people to significantly reduce the harms of the collective decision making, i.e. external costs are flatter.

Homogeneity does not necessarily affect decision costs and external costs at the same rate. The **homogeneity conversion factor**, *a*, is a positive scaling constant accounting for the possibly different strength with which homogeneity impacts external and decision-making costs: _g = ah_, where *h* is the effect of homogeneity upon external costs, and *g* the effect of homogeneity on decision costs. 

A very low level of consensus describes a dictatorship. The external costs at this point are the **harms of dictatorship**. Graphically, they are the starting point (on the left) of the external costs curve. Similarly, the **governing costs of dictatorship** is the level of decision costs for a dictatorship, i.e. the starting point (on the left) of the decision costs curve.

### References

Buchanan, James, and Gordon Tullock. 1962. *The Calculus of Consent: Logical Foundations of Constitutional Democracy*. Originally published by University of Michigan Press. Available from Liberty Fund, <https://www.econlib.org/library/Buchanan/buchCv3.html>.

Tarko, Vlad, and Kyle O'Donnell. 2018. "Escape from Europe: A Calculus of Consent Model of the Origins of Liberal Institutions in the North American Colonies". [*Constitutional Political Economy*](https://link.springer.com/article/10.1007/s10602-018-9264-3). Also available from SSRN: <https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3199452>.

