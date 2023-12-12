#let toc(
) = {

  set page(numbering: "i")

//TODO: outline styling

  heading("Contents", numbering: none, outlined: true) //we want ToC to be in the ToC
  outline(
    title: none,
    depth: 3, 
    indent: true
  )
}