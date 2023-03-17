
for f in $(ls -f $1*.tex); do
    xelatex -output-directory=_output $f >/dev/null
    # echo $f
done

rm $(ls -f ./_output/$1*{aux,log})
open _output/*$1*pdf

# limit to one page
# pdftk coverletter.pdf cat 1 output output.pdf