section	.text

; Print text string
; In: ecx = string loc
; Out: Nothing

lib_print_string:
	pusha			; Save all regs

	mov eax, ecx		; Save ecx for later
	mov edx, 0		; Character counter

.loop:
	cmp byte [eax], 0	; Is it zero?
	je .done		; Jump ahead if so
	inc edx			; Increment counter
	inc eax			; And string loc
	jmp .loop		; And carry on

.done:
	mov eax, 4		; sys_write
	mov ebx, 1		; stdout
	int 80h			; Call kernel

	popa			; Restore all regs
	ret			; Back to caller
