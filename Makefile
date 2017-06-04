#
# Makefile for producing slides or lectures.
# To produce slides, in the shell type:
# make slides
#
# To produce lecture notes, in the shell type:
# make notes
#
# To produce both just type
# make

all: slides notes readme refs

slides: main.slides.tex
	pdflatex main.slides.tex
	pdflatex main.slides.tex
	pdflatex main.slides.tex

notes:  main.notes.tex
	pdflatex main.notes.tex
	pdflatex main.notes.tex
	pdflatex main.notes.tex

readme: readme.tex
	pdflatex readme.tex
	pdflatex readme.tex
	pdflatex readme.tex

refs:	textbookrefs.tex
	pdflatex textbookrefs.tex
	pdflatex textbookrefs.tex
	pdflatex textbookrefs.tex

clean:
	rm -rf *.pdf
	rm -rf *.aux
	rm -rf *.idx
	rm -rf *.log
	rm -rf *.out
	rm -rf *.toc
	rm -rf *.nav
	rm -rf *.snm
	rm -rf *.dvi

.PHONY:	all slides notes readme refs clean
