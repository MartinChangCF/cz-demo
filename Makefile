init: clean
	cz init
	pre-commit install --hook-type commit-msg

clean:
	mkdir tmp
	mv README.md tmp/README.md
	mv Makefile tmp/Makefile
	rm *
	mv tmp/README.md README.md
	mv tmp/Makefile Makefile