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

  it
}