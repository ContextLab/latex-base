# Contextual Dynamics Lab LaTeX Template

This template repository provides a convenient way of setting up new paper-based projects.  The template includes our lab-recommended systems for organizing LaTeX code (including bibliography and figures), analysis code (e.g., notebooks for reproducing each figure), and data (raw and pre-processed), and all associated documentation.  The repository also includes a script for compiling the LaTeX files into PDFs.

For grant applications and other full-page documents, use our [grants template](https://github.com/ContextLab/latex-base-grants) instead.

# Using this template repository

1. **Set up the shared lab bibliography.**  You only need to do this once per computer.  Install `cdlbib` by following the [CDL-bibliography installation instructions](https://github.com/ContextLab/CDL-bibliography#installation), and then run
```bash
cdlbib setup
```
This makes the lab's shared bibliography (`cdl.bib`) available to every LaTeX document on your computer.  The template's `.tex` files are already set up to use it (`\bibliography{cdl}`).  See the [CDL-bibliography documentation](https://github.com/ContextLab/CDL-bibliography) for instructions on adding new references.

2. **Create a new repository from this template.**  Visit the [GitHub page](https://github.com/ContextLab/latex-base) for this project and click the green "Use this template" button, or create a [new GitHub repository](https://github.com/new) and select "ContextLab/latex-base" from the "Repository template" dropdown menu.  Then name and configure your repository.  The official version of each project lives under the [ContextLab](https://github.com/ContextLab) organization; this is the version that we release publicly when the paper is submitted.

3. **Fork the new repository, and do your work in your fork.**  Work from individual lab members should always happen in a fork (`<username>/<repository name>`) of the ContextLab repository.  To update the ContextLab (upstream) repository, submit a pull request from your fork.

4. **Update the README files** (including this one) to reference your paper (rather than this template).  Suggested example text for this file is provided below, and suggested code and data README files are provided in the code and data folders, respectively.

To compile the paper and supplement, run the `compile.sh` script from within the `paper` folder:
```bash
cd paper
./compile.sh
```

## Using Overleaf

You can also draft your paper on [Overleaf](https://www.overleaf.com/).  If you do, be sure to [sync your Overleaf project with a GitHub repository](https://docs.overleaf.com/integrations-and-add-ons/git-integration-and-github-synchronization/github-synchronization) as well, since the GitHub repository is what will ultimately be shared, released, and published.  Overleaf projects can't use the bibliography installed on your computer; follow [these instructions](https://github.com/ContextLab/CDL-bibliography#using-the-bibtex-file-on-overleaf) to link the shared bibliography into your Overleaf project instead.

***

# *Paper title*

This repository contains data and code used to produce the paper ["_Paper title_"](link.to.preprint) by Authors. The repository is organized as follows:

```
root
└── code: all code used in the paper
    └── notebooks : Jupyter notebooks for paper analyses
└── data: all data used in the paper
    ├── raw : raw data before processing
    └── processed : all processed data
└── paper: all files needed to generate a PDF of the paper
    └── figs : pdf copies of each figure
        └── source: source files used to construct individual figure panels or components
    └── admin: files and documents related to administrative tasks (e.g., cover letters, forms, etc.)    
```
