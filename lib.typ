#import "pages/zh-cover.typ": zh-cover-page
#import "pages/en-cover.typ": en-cover-page
#import "pages/outlines.typ": outline-pages
#import "layouts/preface.typ": preface
#import "layouts/body.typ": body

#let cover-pages(info: (:)) = {
    // The default values for info.
    info = (
        degree: "master",
        title-zh: [一個標題有點長的 \ 有趣的研究],
        title-en: [An Interesting Research \ With a Somewhat Long Title],
        department-zh: "某學系",
        department-en: "Mysterious Department",
        id: "012345678",
        author-zh: "張三",
        author-en: "San Chang",
        supervisor-zh: "李四 教授",
        supervisor-en: "Prof. Si Lee",
        // TODO: Revisit this when Typst support displaying datetime in non-English languages.
        year-zh: "一一三",
        month-zh: "七",
        date-en: "July 2024",
    ) + info

    zh-cover-page(info: info)
    en-cover-page(info: info)
}
