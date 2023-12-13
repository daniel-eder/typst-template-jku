// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#let title(
  title,
  subtitle,
  author, 
  department,
  first_supervisor,
  second_supervisor,
  assistant_supervisor,
  submission_date, 
  thesis_type,
  programme_type,
  programme,
) = {

   //TODO: restyle
  // JOHANNES KEPLER
  // UNIVERSITY LINZ
  // Altenberger Straße 69
  // 4040 Linz, Austria
  // jku.at



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
        *#author* \
      ],
    ),
  )

}