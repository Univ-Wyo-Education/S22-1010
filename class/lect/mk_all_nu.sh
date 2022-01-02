#!/bin/bash

if ls *.py >/dev/null 2>&1 ; then
	for i in *.py ; do
		../mk_nu.sh $i
	done
fi

