#include <msp430.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <chain.h>


TASK(1, task_init)
TASK(2, task_1)
TASK(3, task_2)
TASK(4, task_3)


int main() {
    WDTCTL = WDTPW | WDTHOLD;               // Stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;

    return chain_main();
}
static void blink_led (unsigned int blinks) {
    unsigned int k;

    for(k=0;k<10;k++) {
         unsigned int i,j;
             if (blinks==1) {
                     P1OUT ^= 0x01;
             } else if (blinks==2) {
                 P1OUT ^= 0x02;
             }else if (blinks==3) {
                 P1OUT ^= 0x03;
             }
        for (j = 0; j < 10; ++j) {
            i = 10000;
            do i--;
            while(i != 0);
        }
    }
}
void task_init()
{
    P1DIR |= 0x03;
    TRANSITION_TO(task_1);
}

void task_1()
{
    unsigned int blinks=1;
    blink_led(blinks);
    TRANSITION_TO(task_2);
}

void task_2()
{
    unsigned int blinks=2;
    blink_led(blinks);
    TRANSITION_TO(task_3);
}

void task_3()
{
    unsigned int blinks=3;
    blink_led(blinks);
    TRANSITION_TO(task_1);

}

ENTRY_TASK(task_init)
