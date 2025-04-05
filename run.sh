texname=$1
cd ${texname}
latexmk ${texname}.tex --jobname=${texname} -pdf
convert -density 300 ${texname}.pdf -quality 90 ${texname}.png
convert ${texname}.png -trim ${texname}_trimmed.png
cd ..
