all: master.pdf

master.pdf: master.tex
	latexmk -pdf master

master.tex: master.lyx
	lyx-2.1.4 -e latex master

clean:
	rm master.aux master.toc master.log
