// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#import "./template/definitions/thesis_types.typ": thesis_types
#import "./template/definitions/programme_types.typ": programme_types
#import "./template/definitions/programmes.typ": programmes
#import "./template/template.typ": project

#show: project.with(
  title: "<A fitting Title>",
  subtitle: "<And a good Subtitle>", //optional - you can supply "none" or remove this line
  author: "<Firstname> <Lastname>", 
  department: "<The Department>",
  first_supervisor: "<Professor's Name>",
  second_supervisor: "<Professor's Name>", //optional - you can supply "none" or remove this line
  assistant_supervisor: "<Assistant's Name>", //optional - you can supply "none" or remove this line
  submission_date: "<Month> <Year>", //For Information: Year of submission to Examination and Recognition Services
  copyright_year: "<Year>", //optional - you can supply "none" or remove this line, in which case no copyright statement will be shown
  thesis_type: thesis_types.doctorate,
  degree: "<Degree>",
  programme_type: programme_types.doctorate,
  programme: programmes.law,
  abstract: lorem(59),
  acknowledgements: lorem(59),
  dedication: lorem(59)
)

= A level 1 heading
#lorem(60)

Also see #cite(<latex2e>, supplement: "p. 7")

== A level 2 heading
#lorem(20)

Also see @latex:companion[p. 7]

=== A level 3 heading
#lorem(40)
#parbreak()
#lorem(30)

== More heading
#lorem(500)
#lorem(500)

== And even more
#lorem(100)

A list:
- list 1 
- list 2

= Another chapter
#lorem(700)

= One more chapter
#lorem(20)
#parbreak()
#lorem(500)

// Bibliography section
#pagebreak(weak: true)
//consider disabling the header for the bibliography, but for multi page ones it should probably be enabled
// #set page(
//     header: none
//   )
#bibliography("literature.bib", style: "./oscola-no-ibid.csl", title: [Bibliography])