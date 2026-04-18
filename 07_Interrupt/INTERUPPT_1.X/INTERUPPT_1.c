
// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#define _XTAL_FREQ 20000000
#define led1 RD0
#define led2 RD1

void __interrupt() isr(void);

void  __interrupt() isr(void)
{
    led1=~led1;
    __delay_ms(1000);
    led1=~led1;
    __delay_ms(1000);
    INTF = 0;
}

int main()
{
    TRISB0 = 1;
    TRISD0 = 0;
    TRISD1 = 0;
    PORTD =0X00;
    OPTION_REG=0X00;
    INTCON = 0XD0;// 1101 0000
    while(1)
    {
        led2=~led2;
         __delay_ms(1000);
    }
}