#import "../utils/cover-with-rect.typ": cover-with-white-rect


#set heading(
    numbering: "1.1.1",
)


#let cover-author-info(
    department,
    author_en,
    supervisor_en,
) = grid(
    columns: (auto, 0.75em, auto),
    rows: (1.5em, 1.5em),
    align: (right, left, left),
    [Advisor: ],
    "",
    supervisor_en,
    [Student: ],
    "",
    author_en,
)


#let en-cover-page(
    info: (:),
) = page(
    paper: "a4",
    margin: (top: 1.75in, left: 1in, right: 1in, bottom: 2in),
    background: cover-with-white-rect(image("../nthu-logo.svg", width: 1.5in, height: 1.5in)),
    [
	#set text(
	    font: ("New Computer Modern", "TW-MOE-Std-Kai"),
	    size: 14pt,
	)

	#align(
	    horizon + center,
	    block(
		height: 100%,
		stack(
		    dir: ttb,
		    strong(info.title_en),
		    v(1.5in),
		    [#info.department_en \ National Tsing Hua University \ Hsin-Chu, Taiwan 300, Taiwan],
		    v(1.5in),
		    cover-author-info(info.department_en, info.author_en, info.supervisor_en),
		    v(1fr),
		    info.date_en,
		)
	    )
	)
    ]
)
