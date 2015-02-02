all: short long

long:
	./build.sh lps

short:
	./build.sh lps-short

clean:
	find . -name *.agdai | xargs rm
	rm -rf papers/latex/
