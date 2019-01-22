#!/bin/sh




echo "
r
s
h
erase
loadbin ./build/stm32f103.bin 0x08000000
r
g
q
" >loadbin.jl1


JLinkExe -if SWD -device stm32f103rc -speed 4000 loadbin.jl1
rm loadbin.jl1 
