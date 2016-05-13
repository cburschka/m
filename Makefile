all: master.pdf

master.pdf: master.tex
	pdflatex master && bibtex master && pdflatex master && pdflatex master

master.tex: master.lyx
	lyx-2.1.4 -e latex master


