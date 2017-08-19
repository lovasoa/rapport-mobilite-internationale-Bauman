out/rapport.odt: rapport.md
	pandoc --verbose -o out/rapport.odt -f markdown_github -t odt rapport.md
