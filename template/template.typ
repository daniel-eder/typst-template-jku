#import "./styles/header.typ": header as headerstyle
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

  //note: "set" and "show" functions only apply within the current scope, that is file or block.
  //      this means we cannot put set/show style setups in functions in a separate file and import them.
  //      however, we can import pre-styled pages and such.

  set document(author: author.name, title: title)

  //initial setup of document and page defaults
  set page(
    paper: "a4", 
   //TODO: find good margin
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    header-ascent: 1cm, // The amount the header is raised into the top margin.
    footer-descent: 0.75cm, //The amount the footer is lowered into the bottom margin.
    number-align: center,
  )
  set text(
    size: 12pt,
    font: "TeX Gyre Bonum",
    lang: "en"
  )
  set heading(numbering: "1.1") //set heading numbering
  set par(justify: true) //make paragraph justified


  //TODO: heading style https://typst.app/docs/reference/styling/#show-rules

  //render title page
  titlepage(title: title, author: author, logo: logo)

  //render abstract
  abstractpage(abstract: abstract)

  //render table of contents
  tocpage()

  //now set main body style
  set page(numbering: "1", number-align: center, header: headerstyle())
  counter(page).update(1)

  body
}