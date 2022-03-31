
PP=`pwd`
FN=Lect-20
DIR=../../../
IMG=
PY= 


all: setup all2

setup:
	../mk_all_nu.sh

all2: ${FN}.html ${PY}


#%.html: %.raw.md
#	../mk_html.sh $< $@ 

#%.pdf: %.md
#	~/bin/md-to-pdf.sh $<

.PRECIOUS: %.md 
%.md: %.raw.md $(PY) $(IMG)
	m4 -P $< >$@

%.html: %.md
	blackfriday-tool ./$< $@
	echo cat ./${DIR}/css/md.css $@ >/tmp/$@
	cat ./${DIR}/css/pre ./${DIR}/css/markdown.css ./${DIR}/css/post ./${DIR}/css/md.css ./${DIR}/css/hpre $@ ./${DIR}/css/hpost >/tmp/$@
	mv /tmp/$@ ./$@
	echo "file://${PP}/$@" >>open.1

