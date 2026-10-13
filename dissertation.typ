#set text(size: 12pt)

#show heading: set block(below: 1em)

#show heading.where(level: 1): set text(size: 24pt)
#show heading.where(level: 1): set heading(numbering: none)
#show heading.where(level: 1): it => counter(heading).step() + it
#show heading.where(level: 1): it => pagebreak() + it

#show heading.where(level: 2): set text(size: 18pt)

#set page(numbering: "i")

#set document(
  title: [Comparing Adaptive Sampling and Filtering Algorithms for Maximising Network Lifetime in Wireless Sensor Networks],
)

// cover page
#show title: set text(size: 24pt)
#align(top + right)[BGN]
#align(horizon + center)[
  #title()
  #text(size: 18pt)[
    Computer Science Tripos, Part II \ 2027
  ]
]

= Declaration

I, the candidate for Part II of the Computer Science Tripos with Blind Grading Number [BGN], hereby declare that this report and the work described in it are my own work, unaided except as may be specified below, and that the report does not contain material that has already been used to any substantial extent for a comparable purpose. In preparation of this report, I adhered to the Department of Computer Science and Technology AI Policy. I am content for my report to be made available to the students and staff of the University.
Date [date]

= Proforma

#show outline.entry.where(level: 1): set block(above: 1.2em)
#show outline.entry.where(level: 1): set outline.entry(fill: none)

#outline(
  title: [Table of Contents],
  target: selector(heading.where(outlined: true)).after(outline)
)

#context counter(heading).update(0)
#set heading(numbering: "1.1")
#set page(numbering: "1")

= Chapter 1: Introduction

#context counter(page).update(1)



== Motivations

== Related Work

= Chapter 2: Preparation

= Chapter 3: Implementation

= Chapter 4: Evaluation

= Chapter 5: Conclusions

#bibliography("references.bib", style: "ieee")

= Appendices
