result.pdf: ./chapters/*.md header.yml bibliography.bib citation_sheet.csl images
	pandoc --metadata-file header.yml $^ -F pandoc-citeproc -o result.pdf

images: $(wildcard ./chapters/*.py)
	echo $^ | xargs python
	touch images
