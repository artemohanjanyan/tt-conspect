all: main.tex
	mkdir -p build
	#pdflatex -output-directory=build main.tex
	rubber --pdf --warn all --into build main.tex
