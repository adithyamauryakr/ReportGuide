build_pdf:
	pdflatex -synctex=1 -output-directory=./build -interaction=nonstopmode ./main.tex
	pdflatex -synctex=1 -output-directory=./build -interaction=nonstopmode ./main.tex
	cp ./build/main.pdf ./Guide.pdf