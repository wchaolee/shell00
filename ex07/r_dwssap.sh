#!/bin/sh
FT_LINE1=${FT_LINE1:-1}
FT_LINE2=${FT_LINE2:-7}

cat /etc/passwd | grep -v '^#' | awk 'NR % 2 == 1' | cut -d ':' -f 1 | sort -r | sed -n "${FT_LINE1},${FT_LINE2}p" | tr '\n' ',' | sed 's/,/, /g' | sed 's/, $/\./'
