set -e

sh clean.sh

pdflatex main
bibtex main
# makeindex main
makeglossaries main
# bibtex main
# makeindex main
pdflatex main
pdflatex main
