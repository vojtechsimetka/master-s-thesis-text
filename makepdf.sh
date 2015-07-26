#!/bin/bash

function addUnbreakable
{
cat "$1" \
| sed -e "s, \\\ref,~\\\ref,g" \
| sed -e "s, \\\cite,~\\\cite,g" \
> "${1}2"

mv "$1" "${1}.back"
mv "${1}2" "$1"
}

addUnbreakable obsah.tex
addUnbreakable prilohy.tex

make

wc -m prilohy.tex obsah.tex | awk '{print $1/2000}'

#| sed -e "s, a , a~,g" \
#| sed -e "s, A , A~,g" \
#| sed -e "s, an , an~,g" \
#| sed -e "s, An , An~,g" \
#| sed -e "s, the , the~,g" \
#| sed -e "s, The , The~,g" \
#| sed -e "s, from , from~,g" \
#| sed -e "s, From , From~,g" \
#| sed -e "s, of , of~,g" \
#| sed -e "s, Of , Of~,g" \
#| sed -e "s, in , in~,g" \
#| sed -e "s, In , In~,g" \
#| sed -e "s, on , on~,g" \
#| sed -e "s, On , On~,g" \
#| sed -e "s, out , out~,g" \
#| sed -e "s, Out , Out~,g" \
#| sed -e "s, to , to~,g" \
#| sed -e "s, To , To~,g" \
#| sed -e "s, for , for~,g" \
#| sed -e "s, For , For~,g" \
#| sed -e "s, with , with~,g" \
#| sed -e "s, With , With~,g" \
#| sed -e "s, and , and~,g" \
#| sed -e "s, And , And~,g" \
#| sed -e "s, or , or~,g" \
#| sed -e "s, Or , Or~,g" \
