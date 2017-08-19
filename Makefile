out/rapport.odt: rapport.md
	pandoc --verbose --smart -o out/rapport.odt -f markdown -t odt rapport.md
