// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

// A centered smaller h1 heading used for abstract, dedication, etc, all headings before the ToC
#let pre_content_heading(
  content
) = {
  //cannot use a normal call to #heading with a #aling and #text inside, because the default style uses #show to style headings
  align(center)[
    #show heading.where(level: 1): it => block[
      #set text(size: 0.85em)
      #it.body
    ]
    #heading(
         level: 1,
        numbering: none,
        content
    )
    #v(5mm)
  ]
}