// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#let default(it) = {
   set page(
    paper: "a4", 
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    header-ascent: 1cm, // The amount the header is raised into the top margin.
    footer-descent: 0.75cm, //The amount the footer is lowered into the bottom margin.
    number-align: center,
  )
  set text(
    size: 12pt,
    font: "linux libertine", //linux libertine is the default typst fonts
    lang: "en"
  )
  set heading(numbering: "1.1") //set heading numbering
  set par(justify: true) //make paragraph justified

  //header font sizes
  //for level 1 also add spacing
  show heading.where(level: 1): it => [
      //we want a new page for each chapter
      #pagebreak(weak: true)
      #set text(size: 24pt)
      #v(3.5cm)
      #par(first-line-indent: 0pt)[#it]
      #v(1.5cm)
  ]

  show heading.where(level: 2): set text(size: 18pt)
  show heading.where(level: 3): set text(size: 14pt)

  it
}