# Paper Please

This is a template to create a paper for school. It uses LaTex and the APA 7th format for references. It demos using _Zotero_ for keeping track of research papers, but one could use anything that can export to _BibLaTex_.

- [LaTeX Binaires](https://www.latex-project.org/get/)
- [Zotero](https://www.zotero.org/)

## Export References to .Bib File

To use references in the paper, you need to export them from Zotero into BibLaTex format:

![Export format](docs/format.png)

![Select references](docs/zotoro_export.png)

![Select input format](docs/type.png)

## Create the PDF

To "compile" the paper, make sure you have the _LaTeX Binaires_ above installed on your system (you can check with `pdflatex --version`).

Make sure your exported reference file is in the same directory and referenced in the `.tex` file:

```latex
...
\addbibresource{sample.bib}
...
```

then, to make the PDF file, run:

```bash
make build
```

Or have a look at the _Makefile_ for the commands to run. You do indeed need to run the compiler 3 times - that's normal :-/

🤞
