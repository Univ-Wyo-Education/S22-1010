
for i in *.py ; do
	cat -n $i | sed -e 's/	/    /g'  >$i.nu
done
