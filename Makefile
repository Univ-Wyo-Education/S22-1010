
PP=`pwd`
FN=syllabus
# FN1=syllabus-5010
# DIR=../F20-1015
DIR=./
IMG=
PY=

all: ${FN}.html ${FN}.pdf

#${FN1}.html 

%.pdf: %.md
	~/bin/md-to-pdf.sh $<

%.md: %.raw.md $(PY) $(IMG)
	m4 -P $< >$@

%.html: %.md
	blackfriday-tool ./$< $@
	echo cat ./${DIR}/css/md.css $@ >/tmp/$@
	cat ./${DIR}/css/pre ./${DIR}/css/markdown.css ./${DIR}/css/post ./${DIR}/css/md.css ./${DIR}/css/hpre $@ ./${DIR}/css/hpost >/tmp/$@
	mv /tmp/$@ ./$@
	echo "file://${PP}/$@" >>open.1
