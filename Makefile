all: out/rapport.pdf out/rapport.odt

out/rapport.odt: rapport.md
	pandoc --verbose --toc -M toc-title="Table des matières" -M lang="fr-FR" --smart -o out/rapport.odt -f markdown -t odt rapport.md

out/rapport.pdf: rapport.md
	pandoc  --smart --toc -M toc-title="Table des matières" -M lang="fr-FR" -V mainfont="Linux Libertine" -o out/rapport.pdf -f markdown -t latex --latex-engine=xelatex rapport.md

clean:
	rm -rf out/*
