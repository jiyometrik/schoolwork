FILE=main

pdf:
	lualatex ${FILE}.tex
	lualatex ${FILE}.tex

view:
	okular ${FILE}.pdf &

clean:
	rm -rf ${FILE}.{aux,bbl,blg,fls,fdb_latexmk,out,toc,synctex\(busy\),synctex.gz,xdv} .auctex-auto/ *.log

remove:
	rm -rf ${FILE}.{aux,bbl,blg,fls,fdb_latexmk,out,toc,synctex\(busy\),synctex.gz,xdv,dvi,ps,pdf} .auctex-auto/ *.log
