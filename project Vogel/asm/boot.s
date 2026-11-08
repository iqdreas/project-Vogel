[org 0x7c00]

; das gleiche wie printf("Hallo von AOS!") in C

mov ah, 0x0e
mov bx, text

printString:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10
    inc bx
    jmp printString

text:
    db "Hallo von AOS!", 0

end:
    jmp $

;ende von printf()

times 510-($-$$) db 0
db 0x55, 0xaa
  