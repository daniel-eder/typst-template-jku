#let abstract(
  abstract: [],
) = {
  set page(numbering: "i", number-align: center)

  //add centered heading
  align(center)[
    #text(size: 0.85em)[
    #heading(
      level: 1,
      numbering: none,
    )[Abstract]
    ]
  ]

  abstract

  //TODO: do we need this counter update?
  // counter(page).update(1)
  pagebreak()
}