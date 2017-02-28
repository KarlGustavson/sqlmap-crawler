#!/bin/sh
#apt-get install lynx - needed for crawling
cat links.txt |while read url
do
    lynx -listonly -dump "$url"
done |
awk '/^[ ]*[1-9][0-9]*\./{sub("^ [^.]*.[ ]*","",$0); print;}'| \
sort -u
