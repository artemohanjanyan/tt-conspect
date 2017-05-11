all: build/main.pdf

build/main.pdf: main.tex
	mkdir -p build
	rubber --pdf --warn all --unsafe --into build main.tex

sync: clean
	ln ~/Dropbox/main.pdf build/main.pdf
	touch main.tex
	make
	touch ~/Dropbox/main.pdf
	cp build/main.pdf build/q.pdf
	mv build/q.pdf build/main.pdf

clean:
	$(RM) -r build/_minted-main
	$(RM) build/*
