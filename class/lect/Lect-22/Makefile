
PP=`pwd`
FN=Lect-22
DIR=../../../
IMG=
PY=  \
	chk_email1.py \
	data1.py \
	data2.py \
	fib.py \
	fib2.py \
	first.py \
	re1.py \
	stinky.py \
	sub1.py \
	wrang.py \
	p01_read_data.py \
	yell.py

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

