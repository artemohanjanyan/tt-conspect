all: main.tex
	mkdir -p build
	pdflatex -output-directory=build main.tex
