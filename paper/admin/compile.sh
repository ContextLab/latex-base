#!/bin/bash

pdflatex -interaction=nonstopmode cover_letter
pdflatex -interaction=nonstopmode cover_letter

rm -f *.aux *.log *.out *.synctex.gz *.dvi
