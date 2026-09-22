# A Student's Guide on Writing Reports and Theses

*(with LaTeX and Chai)*

A short, practical guide to writing reports and theses in LaTeX, written by students for students. It grew out of tips and habits picked up while writing a Master's thesis, and is meant to be a living reference rather than an exhaustive one.

📄 Read the compiled guide: [`main.pdf`](main.pdf)

## Contents

The guide currently covers:

- **Preface** — motivation and how to contribute
- **Introduction** — why LaTeX for scientific writing
- **LaTeX Basics** — document classes, figures, hyperlinks, sections & chapters, paragraphs, equations, bibliography, and field-specific tips (astrophysics, particle physics, code snippets, ...)
- **Report Writing** — general advice on structuring and writing a good report, plus a note on responsible LLM use
- **Final Checklist** — a last pass before you submit

## Repository Structure

The document is split into small, focused files rather than one long source file, so that each piece is easy to find and edit independently:

```
.
├── main.tex                          # Entry point — assembles the document
├── preamble.tex                      # Packages, colours, macros, listing/hyperref styles, title & author
├── frontmatter.tex                   # Title page and preface
├── chapters/
│   ├── introduction.tex              # Introduction
│   ├── latex-basics-structure.tex    # Document classes, figures, hyperlinks, sections, paragraphs
│   ├── latex-basics-equations.tex    # Equations
│   ├── latex-basics-reference.tex    # Bibliography and tips & tricks
│   └── report-writing.tex            # Report writing advice
├── appendix/
│   └── final-checklist.tex           # Final checklist
├── images/                           # Figures used throughout the guide
└── Makefile                          # Build shortcut (see below)
```

`main.tex` only wires these pieces together with `\input`; add a new chapter or split an existing one further by dropping in a `.tex` file and adding one line to `main.tex`.

## Building

You'll need a working LaTeX distribution (e.g. [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)).

**Using the Makefile:**

```sh
make build_pdf
```

This compiles `main.tex` twice (to resolve cross-references and the table of contents) and copies the result to `Guide.pdf` at the repo root.

**Manually:**

```sh
pdflatex -synctex=1 -output-directory=./build -interaction=nonstopmode ./main.tex
pdflatex -synctex=1 -output-directory=./build -interaction=nonstopmode ./main.tex
```

You can also just open `main.tex` in a full-featured editor such as [TeXstudio](https://texstudio.org/) and build from there — this is the environment the guide itself is written from the perspective of.

## Contributing

This guide is, by nature, incomplete. It was written by physicists, so advice for other fields is especially welcome — as are corrections, typo fixes, and better explanations of things we got only half right.

The best way to contribute is to open a pull request on this repository. If you'd rather not use GitHub, you can reach the authors directly:

- vishal.vetrivel@cbs.ac.in
- dhiyanesh.gowrisankar@cbs.ac.in
- science.club@cbs.ac.in *(if the above no longer work, they'll pass it on)*

## Contributors

- **Adithya Maurya K R** ([@adithyamauryakr](https://github.com/adithyamauryakr)) — restructured the LaTeX source into modular files

## License

No license has been specified for this repository yet. Until one is added, please reach out to the authors before reusing content beyond personal reference.
