#define _XTAL_FREQ 20000000
#define  LED PORTB 

void interrupt ISR();

void interrupt ISR()
{
    TMR2IF=0;
    TMR2ON=0;
    TMR2=0;
    LED = ~LED;
   
}

int main()
{
    TRISB=0X00;
    LED=0X00;
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