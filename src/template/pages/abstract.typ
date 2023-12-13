// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#let abstract(
  abstract: [],
) = {
  counter(page).update(0)
  set page(numbering: "i", number-align: center)

  //add centered heading
  align(center)[
    #text(size: 0.85em)[
    #heading(
      level: 1,
      numbering: none,
    )[Abstract]
    ]
  ]

  abstract

  // counter(page).update(1)
}