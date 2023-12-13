// SPDX-FileCopyrightText: 2023 Daniel Eder
//
// SPDX-License-Identifier: Apache-2.0

#import "./styles/default.typ": default as default_style
#import "./styles/content.typ": content as content_style
#import "./pages/title.typ": title as title_page
#import "./pages/abstract.typ": abstract as abstract_page
#import "./pages/dedication.typ": dedication as dedication_page
#import "./pages/acknowledgements.typ": acknowledgements as acknowledgements_page
#import "./pages/toc.typ": toc as toc_page
#import "./definitions/thesis_types.typ": thesis_types
#import "./definitions/programme_types.typ": programme_types
#import "./definitions/programmes.typ": programmes

#let project(
  title: "<Title>",
  subtitle: none, //optional
  author: "<Firstname> <Lastname>", 
  department: "<The Department>",
  first_supervisor: "<Professor's Name>",
  second_supervisor: none, //optional
  assistant_supervisor: none, //optional
  submission_date: "<Month> <Year>", //For Information: Month and year of submission to Examination and Recognition Services
  thesis_type: thesis_types.doctorate,
  programme_type: programme_types.doctorate,
  programme: programmes.law,
  abstract: none, //optional
  acknowledgements: none, //optional
  dedication: none, //optional
  body
) = {

  set document(author: author, title: title)

  //set default style that is applied to all pages
  show: default_style

  //render title page
  title_page(title, subtitle, author, department, first_supervisor, second_supervisor, assistant_supervisor, submission_date, thesis_type, programme_type, programme)

  //the "meta" = non content pages will use a separate roman numeral counter.
  //set to 0, because each page calls #set page with the numbering style, which causes an increment
  counter(page).update(0)

  //render abstract
  if(abstract != none){
    abstract_page(abstract)
  }

  //render acknowledgements
  if(acknowledgements != none){
    acknowledgements_page(acknowledgements)
  }


  //render dedication
  if(dedication != none){
    dedication_page(dedication)
  }

  //render table of contents
  toc_page()

  //now set style for content pages
  show: content_style

  //for the content pages start at one, because we already set numbering above and the first body page will use the last counter value
  counter(page).update(1)

  body
}