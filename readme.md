# 16-Bit Devanagari OS Renderer

A bare-metal x86 16-bit real-mode operating environment that renders Devanagari characters in VGA Mode 13h ($320 \times 200$, 256 colors).

## 🚀 Overview

* **Bootloader (`boot_2.asm`):** Initializes real-mode execution, loads `charmap_2.bin` and `char.bin` (font data) from disk sectors via BIOS `int 0x13`, and switches to VGA Mode 13h.
* **Input Engine (`charmap_2.asm`):** Captures keystrokes via `int 0x16`, converts ASCII characters using custom mappings, and draws $16 \times 29$ Devanagari glyphs directly into VGA video memory (`0xA000`).

## ⚡ Quick Start

Boot the generated floppy disk image (`os.img`) directly in QEMU:

```bash
qemu-system-i386 -fda os.img
```