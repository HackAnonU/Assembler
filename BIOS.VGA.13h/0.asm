use16
org 0x7C00
mov ax,0x0013
int 0x10
mov ax,0xA000
mov es,ax
xor di,di
mov cx,32000
xor ax,ax
rep stosw
mov di,100*320+160
mov al,40
mov[es:di],al
jmp $
times 510-($-$$)db 0
dw 0xAA55
