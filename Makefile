init: clean
	cz init
	pre-commit install
	pre-commit install --hook-type commit-msg

clean:
	mkdir .tmp
	mv README.md .tmp/README.md
	mv Makefile .tmp/Makefile
	rm -f *
	rm -f .cz.toml
	rm -f .pre-commit-config.yaml
	rm -f .git/hooks/*
	mv .tmp/README.md README.md
	mv .tmp/Makefile Makefile
	rm -r .tmp