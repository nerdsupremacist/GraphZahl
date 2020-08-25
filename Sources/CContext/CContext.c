
void set_self_pointer(void *pointer) {
#ifdef __aarch64__
    __asm__("mov x20, x0");
#endif
#ifdef __x86_64__
    __asm__("movq %rdi, %r13");
#endif
}
