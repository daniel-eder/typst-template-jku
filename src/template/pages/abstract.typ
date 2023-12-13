// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#import "../styles/pre_content_heading.typ": pre_content_heading

#let abstract(
  abstract,
) = {
  set page(numbering: "i", number-align: center)

  pre_content_heading([Abstract])

  abstract
}