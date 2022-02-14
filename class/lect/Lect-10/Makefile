
PP=`pwd`
FN=Lect-11
DIR=../../../
IMG=
PY= \
	feet_to_inches.py

all: setup all2

setup:
	../mk_all_nu.sh

all2: ${FN}.html 

#${FN1}.html ${FN2}.html 

%.html: %.raw.md
	../mk_html.sh $< $@ 

