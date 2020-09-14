#! /bin/bash
sed -e "s/\.jpg\"/\.jpg\n/g" fb.json  \
| awk -F\" '/data-starred-src.*https/{print $NF}' \
| while read a; do curl -s -O "$a"; done
# https://web.facebook.com/loliaday/photos/a.685815561596998/1642401072605104
# counts 101