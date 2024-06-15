#import "@local/nthu-thesis:0.1.0": zh-cover-page, en-cover-page, outline-pages, preface, body, fake-zh-acknowledgements, fake-zh-abstract

#let info = (
    degree: "master",
    title_zh: [一個標題有點長的 \ 有趣的研究],
    title_en: [An Interesting Research \ With a Somewhat Long Title],
    department_zh: "某學系",
    department_en: "Mysterious Department",
    id: "012345678",
    author_zh: "張三",
    author_en: "San Chang",
    supervisor_zh: "李四 教授",
    supervisor_en: "Prof. Si Lee",
    year_zh: "一一三",
    month_zh: "七",
    date_en: "July 2024",
)

#zh-cover-page(info: info)
#en-cover-page(info: info)


// The preface, which contains the abstract, the acknowledgements, and the table(s) of contents.
// 前言部分，包含摘要、誌謝、大綱及圖表目錄。
#show: preface

= 摘要
此論文模板使用Typst @madje2022programmable\標記語言排版。請參閱隨附的README文件以及位於https://typst.app/docs/的文檔了解如何使用Typst。

#fake-zh-abstract
#pagebreak()


= Abstract
This template for master theses / doctoral dissertations uses Typst @madje2022programmable.  Refer to the README file and the upstream documentations at https://typst.app/docs/ to know more about Typst.

#lorem(150)
#pagebreak()


= 誌謝
#fake-zh-acknowledgements
#pagebreak()


#outline-pages


// The main matter.
// 本文部分。
#show: body

= Introduction
// Example demonstrating how to include an image.
#figure(
    image(width: 50%, "cat.jpg"),
    caption: [A _meaningless_ figure.],
    placement: bottom,
)
#lorem(300)


= Background
== Some important background
#lorem(200)
== Some previous works
#lorem(200)


= Methods
== An excellent method
#figure(
    table(
	columns: 4,
	table.header([], [Apples], [Bananas], [Cherries]),
	[Alice], [1.0], [2.0], [3.0],
	[Bob], [1.5], [1.0], [0.5],
	[Eve], [3.5], [7.5], [1.2],
    ),
    caption: [A meaningless table.],
    placement: bottom,
)
#lorem(200)
== Another complimentary and awesome method
#lorem(200)


= Experiments
== Setup
#lorem(200)
== The results
#lorem(200)


= Conclusion
#lorem(300)


#bibliography("citations.bib", style: "ieee")
