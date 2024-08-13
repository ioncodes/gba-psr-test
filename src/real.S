.arm
.text

.global write_to_fiq_banks
.global write_to_svc_banks
.global write_to_abt_banks
.global write_to_irq_banks
.global load_all

MODE_FIQ = 0x11
MODE_IRQ = 0x12
MODE_SVC = 0x13
MODE_ABT = 0x17

write_to_fiq_banks:
    mrs r0, cpsr
    msr cpsr, MODE_FIQ
    mov r8, #0x69
    mov r9, #0x69
    mov r10, #0x69
    mov r11, #0x69
    mov r12, #0x69
    mov r13, #0x69
    mov r14, #0x69
    msr cpsr, r0
    bx lr

write_to_svc_banks:
    mrs r0, cpsr
    msr cpsr, MODE_SVC
    mov r13, #0x69
    mov r14, #0x69
    msr cpsr, r0
    bx lr

write_to_abt_banks:
    mrs r0, cpsr
    msr cpsr, MODE_ABT
    mov r13, #0x69
    mov r14, #0x69
    msr cpsr, r0
    bx lr

write_to_irq_banks:
    mrs r0, cpsr
    msr cpsr, MODE_IRQ
    mov r13, #0x69
    mov r14, #0x69
    msr cpsr, r0
    bx lr

load_all:
    mrs r0, cpsr
    msr cpsr, MODE_FIQ
    msr cpsr, MODE_SVC
    msr cpsr, MODE_ABT
    msr cpsr, MODE_IRQ
    msr cpsr, r0
    bx lr
