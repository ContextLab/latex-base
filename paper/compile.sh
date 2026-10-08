#!/bin/bash

pdflatex -interaction=nonstopmode main
bibtex main
pdflatex -interaction=nonstopmode main
pdflatex -interaction=nonstopmode main
pdflatex -interaction=nonstopmode main

pdflatex -interaction=nonstopmode supplement
bibtex supplement
pdflatex -interaction=nonstopmode supplement
pdflatex -interaction=nonstopmode supplement
pdflatex -interaction=nonstopmode supplement

rm -f *.cb* *.dvi *.log *.blg *.aux *.fff *.out
