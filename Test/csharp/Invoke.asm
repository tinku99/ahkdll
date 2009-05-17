; -------------------------------------------------------------
;
; InvokeFuncAsm - Invokes a function through a function pointer passed as
; the first argument. All other parameters are forwarded on, plus the return
; value of the function invoked is returned.
;
; Copyright (c) Richard Birkby, ThunderMain ltd, November 2001
;
; -------------------------------------------------------------

.386
.model flat

option prologue:none
option epilogue:none
option dotname


.code
align DWORD
DllMain     proc    stdcall public, instance:DWORD, reason:DWORD, reserved:DWORD
        mov     eax, 1  ; success
        ret	12
DllMain     endp


align DWORD
InvokeFunc	proc	stdcall	public, funcptr:DWORD

	pop	ecx	; save return address
	pop	edx	; Get function pointer
	push	ecx	; Restore return address
	jmp	edx	; Transfer control to the function pointer
InvokeFunc	endp

end
