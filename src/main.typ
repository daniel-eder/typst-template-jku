// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#import "./template/template.typ": project

#show: project.with(
  title: "The Magical Green Bean 😎",
  author: (
    name: "Jacopo Zagoli", 
    email: "jacopo@zagoli.com", 
    affiliation: "University of Studies", 
    postal: "Via dei gigli, 18/b", 
    phone: "3402203300"
    ),
  abstract: lorem(59)
)

= Introduction
#lorem(60)

Also see #cite(<latex2e>, supplement: "p. 7")

== In this paper
#lorem(20)

Also see @latex:companion[p. 7]

=== Contributions
#lorem(40)
#parbreak()
#lorem(30)

== Related Work
#lorem(500)
#lorem(500)

== More related work
#lorem(100)
// #figure(
//   image("Business.jpg", width: 70%),
//   caption: "Serious Business."
// )

= A New Life
#lorem(700)

= A New World
#lorem(20)
#parbreak()
#lorem(500)

== Check out the Headers
#lorem(150)
#lorem(150)

=== Do you like them?
#lorem(300)

// Bibliography section
#pagebreak(weak: true)
//consider disabling the header for the bibliography, but for multi page ones it should probably be enabled
// #set page(
//     header: none
//   )
#bibliography("literature.bib", style: "./oscola-no-ibid.csl", title: [Bibliography])