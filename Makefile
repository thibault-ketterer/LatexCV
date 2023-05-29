pdflatex=pdflatex

thibault-ketterer-resume-2021.pdf: holimetrix.pdf brainsonic.pdf rte.pdf bedrock.pdf yogosha.pdf main.pdf
	$(pdflatex) all.tex


main.pdf : timelinecv/main.tex
	cd timelinecv && $(pdflatex) main.tex && mv main.pdf ..

%.pdf: %.tex
	$(pdflatex) $< -p $@

