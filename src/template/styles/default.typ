// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#let default(it) = {
   set page(
    paper: "a4", 
   //TODO: find good margin
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    header-ascent: 1cm, // The amount the header is raised into the top margin.
    footer-descent: 0.75cm, //The amount the footer is lowered into the bottom margin.
    number-align: center,
  )
  set text(
    size: 12pt,
    font: "TeX Gyre Bonum",
    lang: "en"
  )
  set heading(numbering: "1.1") //set heading numbering
  set par(justify: true) //make paragraph justified

  it
}