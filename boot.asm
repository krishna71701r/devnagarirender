bits 16
org 0x7C00

start:
    cli
    xor ax, ax
    mov ds, ax          ; DS = 0x0000
    mov ss, ax
    mov sp, 0x7C00      ; stack at 0x0000:0x7C00
    sti

    ; set VGA mode 13h (320×200, 256 colors)
    mov ax, 0x0013
    int 0x10

    ; point ES at VGA memory
    mov ax, 0xA000
    mov es, ax

    ; SI -> bitmap data, CX = rows, DI = screen offset
    mov si, bitmap
    mov cx, 23       ; 12 rows
    xor di, di          ; start at top-left

.draw_rows:
    lodsw               ; AX = next 16-bit row
    mov bx, ax          ; copy bits

    push cx             ; save outer loop counter
    push di             ; save row start for restor

    mov cx, 16          ; 16 bits per row

.draw_bits:
    shl bx, 1            ; shift MSB into CF
    jnc .skip_pixel      ; if bit was 0, skip (transparent)

    mov al, 0x0F         ; white pixel
    stosb                ; write to [es:di], di++
    jmp .next_bit

.skip_pixel:
    inc di               ; still need to advance DI
.next_bit:
    loop .draw_bits

    pop di              ; restore row start
    add di, 320         ; move to next scanline
    pop cx              ; restore outer counter
    loop .draw_rows
.halt:
    hlt
    jmp .halt

; 12 rows × 2 bytes = 24 bytes of glyph data
bitmap:
    dw 0b0000000000000000
    dw 0b0000000000000000
    dw 0b0000000000000000
    dw 0b0000000000000000
    dw 0b0000000000000000
    dw 0b0000000000000000
    dw 0b0000000000000000
    dw 0b0000001000000000
    dw 0b0000001100000000
    dw 0b0000000111100000
    dw 0b0000000000110000
    dw 0b0000011000010000
    dw 0b0001111100111100
    dw 0b0000000110010000
    dw 0b0000000110010000
    dw 0b0000011100010000
    dw 0b0110010111110000
    dw 0b0010000110010000
    dw 0b0011000010010000
    dw 0b0001100110010000
    dw 0b0000111100010000
    dw 0b0000000000010000
    dw 0b0000000000000000
; pad boot sector to 510 bytes
times 510-($-$$) db 0
; boot signature
dw 0xAA55
