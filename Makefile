result.pdf: */**.md header.yml bibliography.bib citation_sheet.csl
	pandoc --metadata-file header.yml $^ -F pandoc-citeproc -o result.pdf
