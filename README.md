# nthu-thesis

A [Typst](https://typst.app/docs/) template for master theses and doctoral dissertations for NTHU (National Tsing Hua University).

國立清華大學碩士（博士）論文[Typst](https://typst.app/docs/)模板。

![](./thumbnail.png)


## Usage

### Installing the Chinese fonts

This template uses the official fonts from the Ministry of Education of Taiwan (Edukai/TW-MOE-Std-Kai), which are required to be downloaded and installed manually from [language.moe.gov.tw](https://language.moe.gov.tw/001/Upload/Files/site_content/M0001/edukai-5.0.zip).  For the Typst web app, upload the font to the project directory.

此模板中文部分使用教育部標準楷書字體（Edukai/TW-MOE-Std-Kai），在編譯文件前需要自[language.moe.gov.tw](https://language.moe.gov.tw/001/Upload/Files/site_content/M0001/edukai-5.0.zip)下載並手動安裝。若使用的是Typst web app，則需要下載後上傳至Typst專案內。


### Editing

All the content of the thesis are in the `thesis.typ` file.
The metadata shown in the cover pages are described in the `#let info = (...)` dictionary in `thesis.typ`.
Replace the values with your own metadata.

所有論文內容皆位於`thesis.typ`檔案內。顯示在論文中英封面上的資訊由`thesis.typ`中的`#let info = (...)`字典而來。


### Local usage

```sh
$ typst init @preview/nthu-thesis:0.1.0 my-thesis
$ cd my-thesis
$ typst watch thesis.typ
```


## License

This project is licensed under the MIT License.
