#!/bin/bash
for i in *.tar.gz *.zip
do
gpg --armor --output $i.asc --detach-sign $i
done

for i in *.tar.gz *.zip
do
openssl md5 < $i >$i.md5
done
