
for f in $(ls -f *.tex); do
    xelatex -output-directory=_output $f >/dev/null
done

rm $(ls -f ./_output/*{aux,log})
rm $(ls -f ./_output/Br*pdf)
rename -s / /Brozdowski_ _output/{c,r}*pdf
open _output/B*pdf