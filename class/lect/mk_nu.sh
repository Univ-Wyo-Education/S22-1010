#!/bin/bash

cat -n $1 | sed -e 's/\t/    /g' -e 's/^   //' -e 's/    /: /' >$1.nu

