// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#import "./styles/default.typ": default as defaultstyle
#import "./styles/content.typ": content as contentstyle
#import "./pages/title.typ": title as titlepage
#import "./pages/abstract.typ": abstract as abstractpage
#import "./pages/toc.typ": toc as tocpage

#let project(
  title: "",
  abstract: [],
  author: (),
  logo: none,
  body
) = {

  //TODO: make sure font works for header all capitals part on the left side

  set document(author: author.name, title: title)

  //set default style that is applied to all pages
  show: defaultstyle

  //render title page
  titlepage(title: title, author: author, logo: logo)

  //render abstract
  abstractpage(abstract: abstract)

  //render table of contents
  tocpage()

  //now set style for content pages
  show: contentstyle

  //reset page counter
  counter(page).update(1)

  body
}