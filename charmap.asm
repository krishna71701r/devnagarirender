[ORG] 0x0000
[BITS] 16
start:
    
    
    mov ah, 00h
    int 0x16
    xor si,si

cmp al,'q'
    je a
cmp al, ' '
    je space
cmp al,  08h
    je backspace
cmp al,'w'
    je aa    

cmp al,'e'
    je i 

cmp al,'r'
    je ee    

cmp al,'t'
    je u   

cmp al,'y'
    je oo    

cmp al,'u'
    je rishi    

cmp al,'i'
    je  ae

cmp al,'o'
    je  aye  

cmp al,'p'
    je  o  

cmp al,'a'
    je ao   

cmp al,'s'
    je bind    

cmp al,'d'
    je anga    

cmp al,'f'
    je ka    

cmp al,'g'
    je kha   

cmp al,'h'
    je ga   

cmp al,'j'
    je gha   

cmp al,'k'
    je adna    

cmp al,'l'
    je chaa    

cmp al,'z'
    je cha   

cmp al,'x'
    je jha   

cmp al,'c'
    je ja   

cmp al,'v'
    je yingya  

cmp al,'b'
    je ta   

cmp al,'n'
    je th   

cmp al,'m'
    je d   

cmp al,'Q'
    je mantraa    

cmp al,'W'
    je mantrai   

cmp al,'E'
    je mantraee   

cmp al,'R'
    je mantrau   

cmp al,'T'
    je mantraoo   

cmp al,'Y'
    je mantrar  
cmp al,'U'
    je mantrachandra    

cmp al,'I'
    je mantrarareae    

cmp al,'O'
    je mantraae      

cmp al,'P'
    je mantraaye   

cmp al,'A'
    je mantrao   

cmp al,'S'
    je mantraao   

cmp al,'D'
    je dak    

cmp al,'F'
    je ana   

cmp al,'G'
    je t   

cmp al,'H'
    je tha   

cmp al,'J'
    je da   

cmp al,'K'
    je dha    

cmp al,'L'
    je na    

cmp al,'Z'
    je pa   

cmp al,'X'
    je pha   

cmp al,'C'
    je ba   

cmp al,'V'
    je bha   

cmp al,'B'
    je ma   

cmp al,'N'
    je ya   

cmp al,'M'
    je ra

cmp al, 0x0D
    je entr

jmp start

entr:
    xor di,di
    mov di , [count]
    add di , 9280
    mov [count],di
 
    jmp start

bind:
    mov si , 2
    ;removed this
    call  offsett
    jmp mantradraw
anga:
    mov si , 62
    ;removed this
    call  offsett
    jmp mantradraw
amantraaekimanatra:
    mov si , 122
    ;removed this
    call  offsett
    jmp mantradraw
a:
    mov si , 182

    jmp mantradraw
aa:
    mov si , 242
    jmp mantradraw
i:
    mov si , 302
    jmp mantradraw
ee:
    mov si , 362
    jmp mantradraw
u:
    mov si , 422
    jmp mantradraw
oo:
    mov si , 482
    jmp mantradraw
rishi:
    mov si , 542
    jmp mantradraw
lra:
    mov si , 602
    jmp mantradraw
ae:
    mov si , 662
    jmp mantradraw
aye:
    mov si , 722
    jmp mantradraw
o:
    mov si , 782
    jmp mantradraw
ao:
    mov si , 842
    jmp mantradraw
ka:
    mov si , 902
    jmp mantradraw
kha:
    mov si , 962
    jmp mantradraw
ga:
    mov si , 1022
    jmp mantradraw
gha:
    mov si , 1082
    jmp mantradraw
adna:
    mov si , 1142
    jmp mantradraw
chaa:
    mov si , 1202
    jmp mantradraw
cha:
    mov si , 1262
    jmp mantradraw
jha:
    mov si , 1322
    jmp mantradraw
ja:
    mov si , 1382
    jmp mantradraw
yingya:
    mov si , 1442
    jmp mantradraw
ta:
    mov si , 1502
    jmp mantradraw
th:
    mov si , 1562
    jmp mantradraw
d:
    mov si , 1622
    jmp mantradraw
dak:
    mov si , 1682
    jmp mantradraw
ana:
    mov si , 1742
    jmp mantradraw
t:
    mov si , 1802
    jmp mantradraw
tha:
    mov si , 1862
    jmp mantradraw
da:
    mov si , 1922
    jmp mantradraw
dha:
    mov si , 1982
    jmp mantradraw
na:
    mov si , 2042
    jmp mantradraw
pa:
    mov si , 2102
    jmp mantradraw
pha:
    mov si , 2162
    jmp mantradraw
ba:
    mov si , 2222
    jmp mantradraw
bha:
    mov si , 2282
    jmp mantradraw
ma:
    mov si , 2342
    jmp mantradraw
ya:
    mov si , 2402
    jmp mantradraw
ra:
    mov si , 2462
    jmp mantradraw
la:
    mov si , 2522
    jmp mantradraw
marathla:
    mov si , 2582
    jmp mantradraw
va:
    mov si , 2642
    jmp mantradraw
ci:
    mov si , 2702
    jmp mantradraw
sha:
    mov si , 2762
    jmp mantradraw
sa:
    mov si , 2822
    jmp mantradraw
ha:
    mov si , 2882
    jmp mantradraw
mantraa:
    ;removed this
    call  offsett
    mov si , 2942
    jmp mantradraw
mantrai:
    ;removed this
    call  offsett
    mov si , 3002
    jmp mantradraw
mantraee:
    ;removed this
    call  offsett
    mov si , 3062
    jmp mantradraw
mantrau:
    ;removed this
    call  offsett
    mov si , 3122
    jmp mantradraw
mantraoo:
    ;removed this
    call  offsett
    mov si , 3182
    jmp mantradraw
mantrar:
    ;removed this
    call  offsett
    mov si , 3242
    jmp mantradraw
mantrachandra:
    ;removed this
    call  offsett
    mov si , 3302
    jmp mantradraw
mantrarareae:
    ;removed this
    call  offsett
    mov si , 3362
    jmp mantradraw
mantraae:
    ;removed this
    call  offsett
    mov si , 3422
    jmp mantradraw
mantraaye:
    ;removed this
    call  offsett
    mov si , 3482
    jmp mantradraw
mantrao:
    ;removed this
    call  offsett
    mov si , 3542
    jmp mantradraw
mantraao:
    ;removed this
    call  offsett
    mov si , 3602
    jmp mantradraw

mantradraw:
    mov ax,0x9000
    mov ds, ax
    mov cx, 29 
    mov ax, 0xA000
    mov es, ax          ; ES = VGA memory

mantradraw_rows:
    lodsw
    xchg al, ah 
    mov bx, ax
    push cx
    push di
    mov cx, 16

mantradraw_bits:
    shl bx, 1           ; shift MSB into CF
    jnc mantraskip
    mov al, 0x0F        ; white pixel
    stosb               ; write to [es:di], inc di
    jmp mantranext
mantraskip:
    inc di              ; skip pixel (leave background)
mantranext:
    loop mantradraw_bits

    pop di
    add di, 320         ; next scanline
    pop cx
    loop mantradraw_rows
    sub di,9280
    xor si,si
    add di,14
    jmp start
space:
    mov cx, 29 
    mov ax, 0xA000
    mov es, ax
      
draspaceline:
    push cx
    push di
    mov cx, 16
    mov al, 0x00
drapixel:
    cmp cx,15
    jge skip     ; white pixel
    stosb
mloo:    
    loop drapixel
    pop di
    add di,320
    pop cx 
    loop draspaceline
    sub di,9280
    add di,14
    jmp start

skip:
    inc di
    jmp mloo
backspace:
    sub di,14
    mov ax, 0xA000
    mov es, ax
    mov cx ,29
bspaceline:
    push cx
    push di
    mov cx, 16
    mov al, 0x00
bspacepixel:
         ; white pixel
    stosb
    loop bspacepixel
    pop di
    add di,320
    pop cx 
    loop bspaceline
    sub di,9280
    jmp start

offsett:
    cmp di,14
    jge minus
    ret
minus:
    sub di,14
    ret
count:
    dw 0x0000
times 1024-($-$$) db 0