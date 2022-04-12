
PP=`pwd`
FN=Lect-23
DIR=../../../
IMG=
PY=  \
	chk_email1.py \
	data1.py \
	data2.py \
	fib.py \
	fib2.py \
	lab-11_answer.py \
	lab-11_first_cleanup.py \
	lab-11_input.py \
	lab-11_km_to_miles.py \
	lab-11_numbers_and_missing_data.py \
	lab-11_one_hot.py \
	lab-11_plot_stuff.py \
	lab-11_start.py \
	lab-11_text_in_fields.py \
	re1.py \
	stink.py \
	sub1.py \
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

