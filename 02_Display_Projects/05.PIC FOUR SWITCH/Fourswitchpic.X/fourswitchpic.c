
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


#define _XTAL_FREQ  20000000 // 20MHz => 20 X 1000 X 1000 =>20000000
#define button1 RD0
#define button2 RD1
#define button3 RD2
#define button4 RD3
#define LED PORTB
int main() 
{
    TRISB=0X00;// 0000 0000 OUTPUT - 0, INPUT-1
    TRISD= 0X0F;// 0000 0000 OUTPUT - 0, INPUT-1
   
	 while(1) 
		 {
	if(button1 == 1)
	{
	PORTB = 0xFF;
    }	
	else if(button2==1)
	{
    PORTB=0x01;
   __delay_ms(1000);
	PORTB=0x02;
  __delay_ms(1000);
    PORTB=0x04;
  __delay_ms(1000);
	PORTB=0x08;
   __delay_ms(1000);
    PORTB=0x10;
   __delay_ms(1000);
    PORTB=0x20;
   __delay_ms(1000);
    PORTB=0x40;
   __delay_ms(1000);
    PORTB=0x80;
   __delay_ms(1000);
	}
	
    else if(button3==1)
	{
    PORTB=0x80;
   __delay_ms(1000);
	PORTB=0x40;
   __delay_ms(1000);
    PORTB=0x20;
   __delay_ms(1000);
    PORTB=0x10;
   __delay_ms(1000);
    PORTB=0x08;
   __delay_ms(1000);
	PORTB=0x04;
  __delay_ms(1000);
    PORTB=0x02;
   __delay_ms(1000);
    PORTB=0x01;
  __delay_ms(1000);
	}

	else if(button4==1)
	{
    PORTB=0x03;
   __delay_ms(1000);
    PORTB=0x0C;
   __delay_ms(1000);
    PORTB=0x30;
   __delay_ms(1000);
	PORTB=0xC0;
   __delay_ms(1000);
	}
	
    else
	{
		PORTB=0x00;
    }
     }
}