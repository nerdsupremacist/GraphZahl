
void set_self_pointer(void *pointer) {
    __asm__("movq %rdi, %r13");
}
