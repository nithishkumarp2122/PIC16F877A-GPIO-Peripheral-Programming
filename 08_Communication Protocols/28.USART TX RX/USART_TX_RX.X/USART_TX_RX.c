// PIC18F43K22 Configuration Bit Settings

#pragma config FOSC = HSHP
#pragma config PLLCFG = OFF
#pragma config PRICLKEN = ON
#pragma config FCMEN = OFF
#pragma config IESO = OFF

#pragma config PWRTEN = OFF
#pragma config BOREN = OFF
#pragma config WDTEN = OFF

#pragma config LVP = OFF
#pragma config CP0 = OFF
#pragma config CP1 = OFF
#pragma config CP2 = OFF
#pragma config CP3 = OFF

#include <xc.h>
#define _XTAL_FREQ 20000000

void USART_ASYNC_TX_RX(void);
void TX(char a);
void TX_STRING(char *S);
unsigned char RX(void);

int main()
{
    char GET;

    TRISCbits.TRISC6 = 0;   // TX
    TRISCbits.TRISC7 = 1;   // RX

    USART_ASYNC_TX_RX();

    while(1)
    {
        TX_STRING(" Hello ");
        GET = RX();
        TX(GET);
        __delay_ms(1000);
    }
}

/* USART Init ? same role as PIC16 */
void USART_ASYNC_TX_RX(void)
{
    BAUDCON1 = 0x08;     // BRG16 = 1
    TXSTA1   = 0x24;     // BRGH=1, TXEN=1
    RCSTA1   = 0x90;     // SPEN=1, CREN=1

    SPBRG1  = 129;       // 9600 baud @ 20MHz
    SPBRGH1 = 0;
}

/* Transmit single character */
void TX(char a)
{
    TXREG1 = a;
    while(PIR1bits.TX1IF == 0);
}

/* Receive single character */
unsigned char RX(void)
{
    while(PIR1bits.RC1IF == 0);
    return RCREG1;
}

/* Transmit string */
void TX_STRING(char *S)
{
    while(*S)
    {
        TX(*S++);
    }
}
