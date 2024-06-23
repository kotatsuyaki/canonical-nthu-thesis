// Show rules and set rules applied throughout the whole thesis document.

#let doc-impl(
    info: (:),
    show-draft-mark: true,
    it
) = {
    set document(
        title: info.title-en + " " + info.title-zh,
        author: info.author-en + " " + info.author-zh,
        keywords: info.keywords-en + info.keywords-zh,
    )

    set text(
        size: 12pt,
        font: ("New Computer Modern", "TW-MOE-Std-Kai"),
        hyphenate: true,
    )

    set par(
        justify: true,
    )

    set page(
        background: {
            image("../nthu-logo.svg", width: 1.95in, height: 1.95in)
            if show-draft-mark {
                set text(size: 18pt, fill: gray)
                place(
                    top + right,
                    dx: -1em,
                    dy: 1em,
                    rotate(
                        -90deg,
                        reflow: true,
                        [Draft version #datetime.today().display()]
                    )
                )
            }
        },
    )

    it
}
