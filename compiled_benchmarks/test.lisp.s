default rel
global _lisp_entry
extern _lisp_error
extern _read_num
extern _print_value
extern _print_newline
	section .text
_lisp_entry:
	mov rax, 4
	mov r8, rax
	and r8, 3
	cmp r8, 0
	je _continue__1
	lea rdi, [_emsg__0]
	jmp _lisp_error
_emsg__0:
	dq `(add1 1)`, 0
_continue__1:
	add rax, 4
	mov QWORD [-8 + rsp], rdi
	mov rdi, rax
	add rsp, -8
	call _print_value
	sub rsp, -8
	mov rdi, QWORD [-8 + rsp]
	mov rax, 159
	ret