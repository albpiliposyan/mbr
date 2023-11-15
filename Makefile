compile:
	as -o hello.o hello.asm
	ld -m elf_x86_64 -o hello.bin --oformat binary hello.o

image:
	dd if=/dev/zero of=hello.img bs=512 count=2880
	dd if=hello.bin of=hello.img conv=notrunc

virtual:
	qemu-system-x86_64 -m 4096 -ctrl-grab -drive file=hello.img,format=raw


.PHONY: clean
clean:
	@rm -rf hello.img hello.bin hello.o

