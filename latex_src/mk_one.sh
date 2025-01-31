#!/bin/bash

for f in ./*$1*.tex; do
    xelatex -output-directory=_output "$f" #>/dev/null
    # lualatex -output-directory=_output "$f" >/dev/null
    # echo $f
done

rm ./_output/*.aux
rm ./_output/*.log

open _output/*$1*pdf


# limit to one page
# pdftk coverletter.pdf cat 1 output output.pdf

# compress
# qpdf --linearize input.pdf output.pdf
# qpdf --compression-level=1-9 input.pdf output.pdf # 9 is most
# gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=compressed_PDF_file.pdf input_PDF_file.pdf
