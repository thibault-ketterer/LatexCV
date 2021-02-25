pdflatex=/Applications/TeX/TeXShop.app/Contents/Resources/TeXShop/bin/pdflatexc

thibault-ketterer-resume-2021.pdf: holimetrix.pdf brainsonic.pdf rte.pdf bedrock.pdf main.pdf
	$(pdflatex) all.tex


main.pdf : timelinecv/main.tex
	cd timelinecv && $(pdflatex) main.tex && mv main.pdf ..

%.pdf: %.tex
	$(pdflatex) $< -p $@

