
PP=`pwd`
FN=Lect-03
FN2=differences-between-us-and-machines
FN3=intellegence
FN4=security
DIR=../../../
IMG=
PY= 

all: all0 ${FN}.html ${FN2}.html ${FN3}.html ${FN4}.html 

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

