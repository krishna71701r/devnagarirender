# 16-Bit Devanagari OS Renderer

A bare-metal x86 16-bit real-mode operating environment that renders Devanagari characters in VGA Mode 13h ($320 \times 200$, 256 colors).

## ⚡ Quick Start

Boot the generated floppy disk image (`os.img`) directly in QEMU:

```bash
qemu-system-i386 -fda os.img
```
