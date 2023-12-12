#let default(
) = {
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
    number-align: center,
  )

  set heading(numbering: "1.1") //set heading numbering
  set par(justify: true) //make paragraph justified
}