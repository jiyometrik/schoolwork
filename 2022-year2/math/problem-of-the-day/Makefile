filename=main

pdf:
	/usr/bin/latex ${filename}.tex
	dvips ${filename}.dvi
	ps2pdf ${filename}.ps

dvi:
	/usr/bin/latex ${filename}.tex

ps:
	/usr/bin/latex ${filename}.tex
	dvips ${filename}.dvi

view:
	okular ${filename}.pdf &

clean:
	rm -rf .auctex-auto/ ${filename}.{ps,log,aux,out,dvi,bbl,blg,toc,fls,fdb_latexmk} indent.log missfont.log
