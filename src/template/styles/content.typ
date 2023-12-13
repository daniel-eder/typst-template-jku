#import "./header.typ": header as headerstyle

#let content(it) = {
  set page(
    numbering: "1", 
    number-align: center, 
    header: headerstyle()
  )

  it
}