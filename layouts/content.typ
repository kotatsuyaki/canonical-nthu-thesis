#import "../utils/cover-with-rect.typ": cover-with-white-rect

#let content(it) = {
    set page(
	margin: (top: 1.75in, left: 2in, right: 1in, bottom: 1in),
	background: cover-with-white-rect(image("../nthu-logo.svg", width: 1.5in, height: 1.5in)),
	numbering: "i",
    )
    set text(
	size: 12pt,
	font: ("New Computer Modern", "TW-MOE-Std-Kai"),
	hyphenate: true,
    )
    set par(
	leading: 1.5em,
	first-line-indent: 2em,
    )
    set heading(numbering: none)
    show heading.where(
	level: 1,
    ): it => {
	if it.numbering == none {
	    block(width: 100%, {
		set text(size: 24pt)
		v(3em)
		it.body
		v(1.5em)
	    })
	} else {
	    block(width: 100%, {
		set text(size: 24pt)
		v(3em)
		text([Chapter ] + counter(heading).display(it.numbering))
		linebreak()
		it.body
		v(1.5em)
	    })
	}
    }
    counter(page).update(1)

    it
}
