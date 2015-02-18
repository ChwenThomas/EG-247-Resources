#!/bin/bash

DOC=state_space

echo Building $DOC.slides.pdf
pandoc --latex-engine=xelatex -t beamer $DOC.md --slide-level=2 -V fonttheme:professionalfonts -o $DOC.slides.pdf
echo Building $DOC.pdf
pandoc --latex-engine=xelatex $DOC.md -o $DOC.pdf
echo Building $DOC.html
pandoc --mathjax -s $DOC.md -o $DOC.html
echo Done

DOC=convolution

echo Building $DOC.slides.pdf
pandoc --latex-engine=xelatex -t beamer $DOC.md --slide-level=2 -V fonttheme:professionalfonts -o $DOC.slides.pdf
echo Building $DOC.pdf
pandoc --latex-engine=xelatex $DOC.md -o $DOC.pdf
echo Building $DOC.html
pandoc --mathjax -s $DOC.md -o $DOC.html
