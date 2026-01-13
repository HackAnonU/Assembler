### Build and launch
1. `sudo apt install fasm&&sudo apt install qemu-system-x86 qemu-utils`
2. `fasm name.asm name.bin`
3. `qemu-system-x86_64 -drive format=raw,file=name.bin`
### Code
```asm
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
dw 0xAA55```
