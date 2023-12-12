#import "page-header.typ": *
#import "title-page.typ": title as titlepage

#let project(
  title: "",
  abstract: [],
  author: (),
  logo: none,
  body
) = {
  set document(author: author.name, title: title)

  set text(
    size: 12pt,
    font: "TeX Gyre Bonum",
    lang: "en"
  )

  //set up default page
  set page(
    paper: "a4", 
   //TODO: find good margin
    // margin: (outside: 1.0in, inside: 1.125in, bottom:1.125in+0.4in, top: 1.125in + 0.4in),
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    header-ascent: 1cm, // The amount the header is raised into the top margin.
    footer-descent: 0.75cm, //The amount the footer is lowered into the bottom margin.
    numbering: "1",
    number-align: center,
  )


  set heading(numbering: "1.1") //set heading numbering
  set par(justify: true) //make paragraph justified

//TODO: conteinue here

  titlepage(title: title, author: author, logo: logo)


  pagebreak()

  // Abstract page.
  set page(numbering: "I", number-align: center)
  v(1fr)
  align(center)[
    #heading(
      outlined: false,
      numbering: none,
      text(0.85em, smallcaps[Abstract]),
    )
  ]
  abstract
  v(1.618fr)
  counter(page).update(1)
  pagebreak()

  // Table of contents.
  outline(depth: 3, indent: true)
  pagebreak()


  // Main body.
  set par(first-line-indent: 20pt)
  set page(header: getHeader())
  counter(page).update(1)
  body
}