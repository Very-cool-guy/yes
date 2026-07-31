#include <stdio.h>

/* please let me out of this code i will do anything i promise
   please, no. don't leave me. */
int main()
{
        int fahr, celsius;
        int lower, upper, step;
        
        lower = 0;
        upper = 200;
        step = 20;

        fahr = lower;
        while (fahr <= upper) {
                celsius = 5 * (fahr - 32) / 9;
                printf("%d\t%d\n", fahr, celsius);
                fahr = fahr + step;
        }

        printf("yea\n");
        return 0;
}
