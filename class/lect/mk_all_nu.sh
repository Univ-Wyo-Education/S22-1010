#!/bin/bash

if ls *.py >/dev/null 2>&1 ; then
	for i in *.py ; do
		../mk_nu.sh $i
	done
fi

if ls */*.py >/dev/null 2>&1 ; then
	XXX=$(pwd)
	for i in $( find . -name "*.py") ; do
		DN=$(dirname $i)
		BN=$(basename $i)
		cd $DN
		$XXX/../mk_nu.sh $BN
		cd $XXX
	done
fi

