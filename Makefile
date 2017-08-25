out/rapport.odt: rapport.md
	pandoc --verbose --smart -o out/rapport.odt -f markdown -t odt rapport.md

out/rapport.pdf: rapport.md
	pandoc  --smart --toc -M toc-title="Table des matières" -M lang="fr-FR" -o out/rapport.pdf -f markdown -t latex --latex-engine=xelatex rapport.md

clean:
	rm -rf out/*
