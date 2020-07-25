#include <iostream>

int div64(int lo, int hi, int *premainder, int divisor) {
    int quotient, rem;
	
    asm ("idivl  %[divsrc]"
          : "=a" (quotient), "=d" (rem)    // a means eax,  d means edx
          : "d" (hi), "a" (lo),
            [divsrc] "rm" (divisor)        // Could have just used %0 instead of naming divsrc
            // note the "rm" to allow the src to be in a register or not, whatever gcc chooses.
            // "rmi" would also allow an immediate, but unlike adc, idiv doesn't have an immediate form
          : // no clobbers
        );
    *premainder = rem;
    return quotient;
}
int main(){
	std::cout << div64(10, 2, nullptr, 3) << std::endl;
	__asm__();
	return 0;
}