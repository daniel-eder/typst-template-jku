#import "./styles/default.typ": default as defaultstyle
#import "./styles/main-body.typ": main-body as mainbodystyle
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

  //TODO: 
  //  - fix headers
  //  - fix page numbers for content chapters

  //initial page setup
  //note: this cannot be in defaultstyle() as it would cause an empty first page
  set page(
    paper: "a4", 
   //TODO: find good margin
    // margin: (outside: 1.0in, inside: 1.125in, bottom:1.125in+0.4in, top: 1.125in + 0.4in),
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    header-ascent: 1cm, // The amount the header is raised into the top margin.
    footer-descent: 0.75cm, //The amount the footer is lowered into the bottom margin.
    number-align: center,
  )

  set document(author: author.name, title: title)

  //apply default style that all pages have
  defaultstyle()

  //render title page
  titlepage(title: title, author: author, logo: logo)

  //render abstract
  abstractpage(abstract: abstract)

  //render table of contents
  tocpage()

  //now set main body style
  mainbodystyle()

  body
}