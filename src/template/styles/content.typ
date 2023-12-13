// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#import "./header.typ": header as headerstyle

#let content(it) = {
  set page(
    numbering: "1", 
    number-align: center, 
    header: headerstyle()
  )

  //TODO: For level 1 headings in content consider enabling the below to show "Chapter N" one line above the heading title 

  // show heading.where(level: 1): it => [
  //     // #pagebreak(weak: true)
  //     #set text(size: 24pt)
  //     #v(1.5in)
  //     #block[
  //       #if it.numbering != none [
  //         Chapter #counter(heading).display() 
  //         #v(0.5cm)
  //       ]
  //       #par(first-line-indent: 0pt)[#it.body]
  //     ]
  //     #v(1.5cm, weak: true)
  // ]

  it
}