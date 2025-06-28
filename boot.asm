[ORG] 0x7C00
[BITS] 16
start:
    cli
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7C00
    sti
      mov ax, 0x9000
    mov es, ax
    xor bx, bx

    mov ah, 0x02        ; BIOS read sector
    mov al, 8           ; Number of sectors (8 x 512 = 4096 bytes)
    mov ch, 0           ; Cylinder 0
    mov cl, 4          ; Sector 2 (1-based)
    mov dh, 0           ; Head 0
    mov dl, 0x00        ; Drive 0 (floppy)
  
  
    int 0x13
    jc .disk_fail
    
    mov ax, 0x8000
    mov es, ax
    xor bx, bx

    mov ah, 0x02        ; BIOS read sector
    mov al, 2           ; Number of sectors (8 x 512 = 4096 bytes)
    mov ch, 0           ; Cylinder 0
    mov cl, 2          ; Sector 2 (1-based)
    mov dh, 0           ; Head 0
    mov dl, 0x00        ; Drive 0 (floppy)
  
  
    int 0x13
    jc .disk_fail


    ; Set video mode 13h
    xor di,di
    mov ax, 0x0013
    int 0x10
    jmp 0x8000:0000
    ; Read 8 sectors starting from sector 2 to load 3660 bytes
   

    ; Prepare to render glyph from buffer (first 24 bytes)
    mov ax, 0x9000
    mov ds, ax
    xor si, si
    add si, 3000

    mov cx, 29
    xor di, di           ; 12 rows
             ; start at VGA offset 0
.RE:
    
    add si,2
    mov cx, 29 
    mov ax, 0xA000
    mov es, ax          ; ES = VGA memory

.draw_rows:
    lodsw
    xchg al, ah 
    mov bx, ax
    push cx
    push di
    mov cx, 16

.draw_bits:
    shl bx, 1           ; shift MSB into CF
    jnc .skip
    mov al, 0x0F        ; white pixel
    stosb               ; write to [es:di], inc di
    jmp .next
.skip:
    inc di              ; skip pixel (leave background)
.next:
    loop .draw_bits

    pop di
    add di, 320         ; next scanline
    pop cx
    loop .draw_rows
    cmp si, 3602
    jle .RE
.halt:
    jmp .disk_fail

; Handle disk error

.disk_fail:
    mov ah,0x0E
    mov al , 'e'
    int 0x10
    jmp .disk_fail


times 510-($-$$) db 0
    dw 0xAA55
