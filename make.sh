set -e

# Clear out junk
find -type f -iname '*aux' -delete
find -type f -iname '*.ind' -delete
find -type f -iname '*.toc' -delete
find -type f -iname '*.bbl' -delete

pdflatex main
bibtex main
makeglossaries main
pdflatex main
pdflatex main
