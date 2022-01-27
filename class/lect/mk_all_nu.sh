#!/bin/bash

function mk_nu {

	cat -n $1 | sed -e 's/\t/    /g' -e 's/^   //' -e 's/    /: /' >$1.nu

}

if ls *.py >/dev/null 2>&1 ; then
	for i in *.py ; do
		mk_nu $i
	done
fi

if ls */*.py >/dev/null 2>&1 ; then
	XXX=$(pwd)
	for i in $( find . -name "*.py") ; do
		DN=$(dirname $i)
		BN=$(basename $i)
		cd $DN
		mk_nu $BN
		cd $XXX
	done
fi

