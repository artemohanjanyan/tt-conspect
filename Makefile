all: main.tex
	mkdir -p build
	rubber --pdf --warn all --unsafe --into build main.tex

sync: clean
	ln ~/Dropbox/main.pdf build/main.pdf
	touch main.tex
	make
	touch ~/Dropbox/main.pdf
	rm build/main.pdf

clean:
	$(RM) -r build/_minted-main
	$(RM) build/*
