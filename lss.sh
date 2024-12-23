avr-objdump -h $1
avr-objdump -S -j .text -j .text_ram $1
avr-objdump -s -j .vtable -j .rodata -j .ctors  -j .data -j .sdata $1
avr-objdump -t $1 | grep ^[0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f] | sort 

