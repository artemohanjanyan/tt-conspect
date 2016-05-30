all: main.tex
	mkdir -p build
	#pdflatex -output-directory=build main.tex
	rubber --pdf --warn all --unsafe --into build main.tex
	#touch ~/Dropbox/main.pdf

clean : 
	$(RM) -r build/_minted-main
	$(RM) build/*
