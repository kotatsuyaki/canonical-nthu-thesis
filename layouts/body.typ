#import "../utils/cover-with-rect.typ": cover-with-white-rect

#let body(it) = {
    counter(page).update(0)
    set page(
	margin: (top: 1.75in, left: 2in, right: 1in, bottom: 1in),
	background: cover-with-white-rect(image("../nthu-logo.svg", width: 1.5in, height: 1.5in)),
	numbering: "1",
	header: context {
	    // Find chapter headings on the current page (all-chapter-headings).
	    let all-chapter-headings = query(heading.where(level: 1).after(here()))
	    let current = counter(page).get()
	    let page-chapter-headings = all-chapter-headings.filter(m => counter(page).at(m.location()) == current)
	    let is-chapter-start-page = page-chapter-headings.len() > 0

	    // Show the chapter number, the chapter name, and the page number in the header.
	    if not is-chapter-start-page {
		let chapter-headings-so-far = query(heading.where(level: 1).before(here()))
		let chapter-heading = chapter-headings-so-far.last()
		let chapter-count = counter(heading).at(chapter-heading.location()).at(0)

		set text(size: 14pt)
		smallcaps("Chapter " + str(chapter-count) + ".")
		h(0.75em)
		smallcaps(chapter-heading.body)
		h(1fr)
		counter(page).display()
	    }
	},
    )
    set text(
	size: 12pt,
	font: ("New Computer Modern", "TW-MOE-Std-Kai"),
	hyphenate: true,
    )
    set par(
	leading: 1.5em,
	first-line-indent: 2em,
	linebreaks: "optimized",
    )
    set heading(numbering: "1.1.1")
    show heading: it => locate(loc => {
	let size = if it.level == 2 {
	    18pt
	} else {
	    14pt
	}
	block(width: 100%, {
	    set text(size: size)
	    // Collapse 1em vertically if there is a parent heading close enough above.
	    // Otherwise, space 1em vertically.
	    let all-prev-headings = query(selector(heading).before(loc), loc)
	    if all-prev-headings.len() > 1 {
		let prev-heading = all-prev-headings.at(-2)
		let is-same-page = prev-heading.location().page() == it.location().page()
		let is-close = prev-heading.location().position().y + 250pt > it.location().position().y
		let is-parent = prev-heading.level == it.level - 1
		if (is-same-page and is-close and is-parent) {
		    v(-1em)
		} else {
		    v(1em)
		}
	    } else {
		v(1em)
	    }
	    box(
		width: 100%,
		stack(
		    dir: ltr,
		    counter(heading).display(it.numbering),
		    h(1em),
		    it.body
		)
	    )
	    v(1em)
	})
    })

    show heading.where(
	level: 1,
    ): it => {
	pagebreak()
	if it.numbering == none {
	    block(width: 100%, {
		set text(size: 24pt)
		v(3em)
		it.body
		v(2em)
	    })
	} else {
	    block(width: 100%, {
		set text(size: 24pt)
		v(3em)
		text([Chapter ] + counter(heading).display(it.numbering))
		linebreak()
		it.body
		v(2em)
	    })
	}
    }

    it
}