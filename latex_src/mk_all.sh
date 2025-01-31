#!/bin/bash

for f in ./*.tex; do
    xelatex -output-directory=_output "$f" >/dev/null
done

rm ./_output/*.aux
rm ./_output/*.log

for f in ./_output/*pdf; do
    base=$(basename "$f")
    mv "$f" "_output/Brozdowski_$base"
done
open _output/B*pdf
