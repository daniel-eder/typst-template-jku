#import "./header.typ": header as headerstyle
#import "./default.typ": default as defaultstyle

#let main-body(
) = {
  //apply default style in case it was changed 
  defaultstyle()

  //TODO: par indent?
  // set par(first-line-indent: 20pt)
  set page(
    header: headerstyle(),
    numbering: "1"
  )
}