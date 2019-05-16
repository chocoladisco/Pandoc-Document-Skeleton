result.pdf: */**.md header.yml bibliography.bib citation_sheet.csl images
	pandoc --metadata-file header.yml $^ -F pandoc-citeproc -o result.pdf

images: */**.py
	echo */**.py | xargs python
