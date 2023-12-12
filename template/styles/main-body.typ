#import "./header.typ": header as headerstyle
#import "./default.typ": default as defaultstyle

#let main-body(
) = {
  //TODO: par indent?
  // set par(first-line-indent: 20pt)
  set page(
    header: headerstyle(),
    numbering: "1"
  )

  counter(page).update(1)
}