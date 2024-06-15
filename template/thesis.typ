#import "@local/nthu-thesis:0.1.0": cover-page, preface, body, fake-zh-acknowledgements, fake-zh-abstract

#cover-page(
    info: (
	degree: "master",
	title_zh: [一個標題有點長的 \ 有趣的研究],
	title_en: [An Interesting Research \ With a Somewhat Long Title],
	department: "某學系",
	id: "012345678",
	author_zh: "張三",
	author_en: "San Chang",
	supervisor_zh: "李四 教授",
	supervisor_en: "Prof. Si Lee",
	year_zh: "一一三",
	month_zh: "七",
    )
)


#show: preface


= 摘要
#fake-zh-abstract
#pagebreak()


= Abstract
#lorem(150)
#pagebreak()


= 誌謝
#fake-zh-acknowledgements
#pagebreak()


#outline(indent: auto)


#show: body

= Introduction
#lorem(300)
= Background
== Some important background
#lorem(200)
== Some previous works
#lorem(200)
= Methods
== An excellent method
#lorem(200)
== Another complimentary good method
#lorem(200)
= Experiments
== Setup
#lorem(200)
== The results
#lorem(200)
= Conclusion
#lorem(300)
