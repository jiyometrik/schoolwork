filename=main

pdf:
	/usr/bin/latex ${filename}.tex
	dvips ${filename}.dvi
	ps2pdf ${filename}.ps
	# xelatex ${filename}.tex

dvi:
	/usr/bin/latex ${filename}.tex

ps:
	/usr/bin/latex ${filename}.tex
	dvips ${filename}.dvi

view:
	atril ${filename}.pdf &

clean:
	rm -rf ${filename}.{aux,bbl,blg,fls,fdb_latexmk,out,toc,synctex.gz} .auctex-auto/ *.log

remove:
	rm -rf ${filename}.{aux,bbl,blg,fls,fdb_latexmk,out,toc,synctex.gz,dvi,ps,pdf} .auctex-auto/ *.log
