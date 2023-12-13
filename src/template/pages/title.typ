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
  copyright_year, 
  thesis_type,
  degree,
  programme_type,
  programme,
) = {

 v(0.20fr)
  
  //render title, and slighty smaller the subtitle
  align(center)[
    #text(2em, weight: 700, title) 

    #text(1.7em, weight: 400, subtitle)
  ]

  v(1cm)
  align(center)[by]
  v(1cm)

  align(center)[
    //now the author
    #text(size: 16pt)[#author] \

    #v(2cm)

    //thesis details
    #text(size: 15pt)[#thesis_type] \
    to confer the academic degree of \
    #text(size: 15pt)[#degree] \
    in the #programme_type \
    #text(size: 15pt)[#programme] \
    #v(1cm)
    #department \
    Johannes Kepler University Linz\

    //supervisors
    #v(1.5cm)
    Supervisor: #first_supervisor \
    Second Supervisor: #second_supervisor \
    Assistant Supervisor: #assistant_supervisor \

    //submission date
    #v(2cm)
    #submission_date

    //copyright notice
    #v(1cm)
    #sym.copyright #author #copyright_year \

  ]
}