# 1 "INTERUPPT_TIMER2.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 295 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "INTERUPPT_TIMER2.c" 2



void interrupt ISR();

void interrupt ISR()
{
    TMR2IF=0;
    TMR2ON=0;
    TMR2=0;
    PORTB = ~PORTB;

}

int main()
{
    TRISB=0X00;
    PORTB=0X00;
    INTCON=0XC0;
    PIE1=0X02;
    PIR1=0X00;
    PR2 = 20;
    TMR2=0;

    while(1)
    {
        __delay_ms(1000);
           T2CON=0X7F;
    }
}
