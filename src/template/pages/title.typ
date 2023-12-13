// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#let title(
  title: "",
  author: (),
  logo: none,
) = {

  //TODO: restyle
    // Title page.
  v(0.25fr) //vertical space, fr = fraction
  align(center)[
    #text(size: 2em, weight: 700, title)
  ]

  // Author information.
  pad(
    top: 0.7em,
    grid(
      columns: (1fr),
      gutter: 1em,
      align(center)[
        *#author.name* \
        #author.email \
        #author.affiliation \
        #author.postal \
        #author.phone
      ],
    ),
  )

  // Logo
  if logo != none {
    v(0.25fr)
    align(center, image(logo, width: 26%))
    v(0.50fr)
  } else {
    v(0.75fr)
  }
}