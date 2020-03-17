// This file was automatically generated and should not be edited.

#ifndef selfcontext_h
#define selfcontext_h


void set_self_pointer(void *pointer) {
    __asm__("movq %rdi, %r13");
}


struct int_function_result {
    long res0;
};


struct float_function_result {
    double res0;
};


struct int_int_function_result {
    long res0;
    long res1;
};


struct int_float_function_result {
    long res0;
    double res1;
};


struct float_float_function_result {
    double res0;
    double res1;
};


struct int_int_int_function_result {
    long res0;
    long res1;
    long res2;
};


struct int_int_float_function_result {
    long res0;
    long res1;
    double res2;
};


struct int_float_float_function_result {
    long res0;
    double res1;
    double res2;
};


struct float_float_float_function_result {
    double res0;
    double res1;
    double res2;
};


struct int_int_int_int_function_result {
    long res0;
    long res1;
    long res2;
    long res3;
};


struct int_int_int_float_function_result {
    long res0;
    long res1;
    long res2;
    double res3;
};


struct int_int_float_float_function_result {
    long res0;
    long res1;
    double res2;
    double res3;
};


struct int_float_float_float_function_result {
    long res0;
    double res1;
    double res2;
    double res3;
};


struct float_float_float_float_function_result {
    double res0;
    double res1;
    double res2;
    double res3;
};


struct int_int_int_int_float_function_result {
    long res0;
    long res1;
    long res2;
    long res3;
    double res4;
};


struct int_int_int_float_float_function_result {
    long res0;
    long res1;
    long res2;
    double res3;
    double res4;
};


struct int_int_float_float_float_function_result {
    long res0;
    long res1;
    double res2;
    double res3;
    double res4;
};


struct int_float_float_float_float_function_result {
    long res0;
    double res1;
    double res2;
    double res3;
    double res4;
};


struct int_int_int_int_float_float_function_result {
    long res0;
    long res1;
    long res2;
    long res3;
    double res4;
    double res5;
};


struct int_int_int_float_float_float_function_result {
    long res0;
    long res1;
    long res2;
    double res3;
    double res4;
    double res5;
};


struct int_int_float_float_float_float_function_result {
    long res0;
    long res1;
    double res2;
    double res3;
    double res4;
    double res5;
};


struct int_int_int_int_float_float_float_function_result {
    long res0;
    long res1;
    long res2;
    long res3;
    double res4;
    double res5;
    double res6;
};


struct int_int_int_float_float_float_float_function_result {
    long res0;
    long res1;
    long res2;
    double res3;
    double res4;
    double res5;
    double res6;
};


struct int_int_int_int_float_float_float_float_function_result {
    long res0;
    long res1;
    long res2;
    long res3;
    double res4;
    double res5;
    double res6;
    double res7;
};


#endif
