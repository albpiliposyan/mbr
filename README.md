# MBR (Master Boot Record)

This project is a simple Master Boot Record (MBR) implementation written in x86 Assembly. When booted, it prints "Hello World" to the screen.

## Files

- `hello.asm` — Assembly source code for the MBR.
- `Makefile` — Build instructions to assemble, link, and create a bootable image.

## Requirements

- GNU assembler (`as`)
- GNU linker (`ld`)
- QEMU (for emulation)
- `dd` (for image creation)
- `make`

## Building

To build and run the project:

```sh
make
make image
make virtual
```

- `make` — Assembles and links the MBR code.
- `make image` — Creates a bootable floppy disk image with the MBR.
- `make virtual` — Boots the image in QEMU.

## Cleaning Up

To remove generated files:

```sh
make clean
```

## Notes

- This MBR is for educational purposes and demonstrates how to print text from the boot sector.

   This will launch QEMU and boot from the generated image. You should see "Hello, World!" printed on the screen.
