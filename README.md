# Eason Tang's Résumé

LaTeX résumé built on the [Awesome-CV](https://github.com/posquit0/Awesome-CV) template.
Content lives in `resume/*.tex` (one file per section); `resume.tex` is the assembly point.

📄 **Download the latest PDF:** [resume.pdf](https://github.com/YOUR_GITHUB_USERNAME/resume/raw/main/resume.pdf)

## Architecture

```
resume.tex              ← Main assembly file (personal info + section imports)
resume/
├── summary.tex         ← One section per file
├── experience.tex
├── projects.tex
├── writing.tex
├── skills.tex
└── education.tex
awesome-cv.cls          ← Awesome-CV template class
fontawesome.sty         ← Icon library
fonts/                  ← Bundled fonts (Roboto, FontAwesome, Source Sans Pro)
.github/workflows/      ← GitHub Actions CI for auto-building PDF on push
Makefile                ← `make` builds resume.pdf locally
```

## Build locally

Requires a TeX distribution with XeLaTeX (TeX Live or MacTeX).

```bash
make
```

This produces `resume.pdf` in the project root.

## Build via CI

Every push to `main` triggers GitHub Actions to compile `resume.tex` and commits the rendered `resume.pdf` back to the repo. The PDF link in this README always points to the latest version.

## Editing

To update content, edit the relevant file under `resume/`. Each section uses Awesome-CV macros:

- `\cventry{title}{org}{location}{dates}{...items...}` for experience/project entries
- `\cvskill{category}{description}` for skill rows
- `\cvparagraph{...}` for the summary section

To change the accent color, edit the `\colorlet{awesome}{...}` line in `resume.tex`.
Options: `awesome-emerald`, `awesome-skyblue`, `awesome-red`, `awesome-pink`, `awesome-orange`, `awesome-nephritis`, `awesome-concrete`, `awesome-darknight`.

## Credit

Forked structure inspired by [tigercosmos/resume](https://github.com/tigercosmos/resume).
Template by [Claud D. Park](https://github.com/posquit0/Awesome-CV) — CC BY-SA 4.0.
