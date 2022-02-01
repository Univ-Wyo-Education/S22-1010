
PP=`pwd`
FN=Lect-06
DIR=../../../
IMG=
PY=  \
	a-list.py \
	cars.py \
	cars2.py \
	ex1/ex1-v1.py \
	ex1/ex1-v2.py \
	ex1/ex1-v3.py \
	ex1/ex1-v4.py \
	ex1/ex1.py \
	ex2/ex1-v1.py \
	ex2/ex1-v2.py \
	ex2/ex1-v3.py \
	ex2/ex1-v4.py \
	ex2/ex1.py \
	ex3/ex1-v1.py \
	ex3/ex1-v2.py \
	ex3/ex1-v3.py \
	ex3/ex1-v4.py \
	ex3/ex1.py \
	hyp_1.py \
	list-comp.py \
	list-mod.py 

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

