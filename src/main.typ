// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#import "./template/definitions/thesis_types.typ": thesis_types
#import "./template/definitions/programme_types.typ": programme_types
#import "./template/definitions/programmes.typ": programmes
#import "./template/template.typ": project

#show: project.with(
  title: "<Title>",
  subtitle: "<Subtitle>", //optional - you can supply "none" or remove this line
  author: "<Firstname> <Lastname>", 
  department: "<The Department>",
  first_supervisor: "<Professor's Name>",
  second_supervisor: "<Professor's Name>", //optional - you can supply "none" or remove this line
  assistant_supervisor: "<Assistant's Name>", //optional - you can supply "none" or remove this line
  submission_date: "<Month> <Year>", //For Information: Month and year of submission to Examination and Recognition Services
  thesis_type: thesis_types.doctorate,
  programme_type: programme_types.doctorate,
  programme: programmes.law,
  abstract: lorem(59),
  acknowledgements: lorem(59),
  dedication: lorem(59)
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