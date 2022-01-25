
PP=`pwd`
FN=Lect-03
# DIR=../F20-1015
DIR=../../../
IMG=
PY= Makefile \
	conv/conv_mi_to_mi.py \
	conv/conv_main.py \
	conv/step-1.py \
	conv/step-2.py \
	conv/step-3.py \
	conv/step-4.py \
	conv/step-5.py \
	conv/step-6.py

all: all0 ${FN}.html 

all0:
	../mk_all_nu.sh

# %.pdf: %.md
#	~/bin/md-to-pdf.sh $<

# %.md: %.raw.md $(PY) $(IMG)
#	m4 -P $< >$@

#%.html: %.md 
#	blackfriday-tool ./$< $@
#	echo cat ./${DIR}/css/md.css $@ >/tmp/$@
#	cat ./${DIR}/css/pre ./${DIR}/css/markdown.css ./${DIR}/css/post ./${DIR}/css/md.css ./${DIR}/css/hpre $@ ./${DIR}/css/hpost >/tmp/$@
#	mv /tmp/$@ ./$@
#	echo "file://${PP}/$@" >>open.1

.PRECIOUS: %.md 
%.md: %.raw.md $(PY) $(IMG)
	m4 -P $< >$@

%.html: %.md
	blackfriday-tool ./$< $@
	echo cat ./${DIR}/css/md.css $@ >/tmp/$@
	cat ./${DIR}/css/pre ./${DIR}/css/markdown.css ./${DIR}/css/post ./${DIR}/css/md.css ./${DIR}/css/hpre $@ ./${DIR}/css/hpost >/tmp/$@
	mv /tmp/$@ ./$@
	echo "file://${PP}/$@" >>open.1

