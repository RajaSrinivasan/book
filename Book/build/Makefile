all:
	cp ../prolog.tex main.tex
	cat ../../Projects/hello/hello.tex >>main.tex
	cat ../epilog.tex >>main.tex
	find ../../Projects -name "*.tpp.tex" -exec cp {} . \;
	pdflatex main.tex
