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

  counter(page).update(1)

  body
}