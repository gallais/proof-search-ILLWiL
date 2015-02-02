#!/bin/sh
FILE=$1
set -e
cd papers
mkdir -p latex/
cp *.pdf *.cls *.sty *.tex *.bib *.sed latex/
agda +RTS -K40M -M1G -RTS -i . -i ../stdlib/src/ -i ../ -i ../equality --latex $FILE.lagda
cd latex
sed -f rules.sed -i $FILE.tex
sed -f rules.sed -i commands.tex
latexmk -bibtex -pdf -e '$pdflatex=q/xelatex %O %S/' $FILE.tex
cd ../..
ln -sf papers/latex/$FILE.pdf
