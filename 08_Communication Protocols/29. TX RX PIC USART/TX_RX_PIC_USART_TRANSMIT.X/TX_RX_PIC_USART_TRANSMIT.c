// PIC16F877A Configuration Bit Setting
// CONFIG
#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config BOREN = OFF
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#include <xc.h>
#define _XTAL_FREQ 20000000

void USART_ASYNC_TX(); 
void TX(char a); 
void TX_STRING(char *S);  

int main()
{
    TRISC6 = 0; // TX
    USART_ASYNC_TX();

    while(1)
    {
        TX_STRING(" Hello ");
        __delay_ms(1000);
    }
}

void USART_ASYNC_TX()
{
    TXSTA = 0x26;  
    RCSTA = 0x80;  
    SPBRG = 129;   
}

void TX(char a)
{
    while(TXIF == 0); 
    TXREG = a;
}

void TX_STRING(char *S) 
{
    while(*S)
    {
        TX(*S++);
    }
}
