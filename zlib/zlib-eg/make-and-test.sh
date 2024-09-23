#!/bin/sh

make
./zpipe.x < message.txt > message.bin
./zpipe.x -d < message.bin > message-rewrite.txt
du -b message.txt message.bin message-rewrite.txt
