// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#let toc(
) = {

  set page(numbering: "i")

  //style toc entries
  show outline.entry.where(level: 1): it => {
    v(16pt, weak: true)
    strong(it)
  }
  show outline.entry.where(level: 2): it => {
    it
  }

  heading("Contents", numbering: none, outlined: true) //we want ToC to be in the ToC
  outline(
    title: none,
    depth: 3, 
    indent: true
  )
}