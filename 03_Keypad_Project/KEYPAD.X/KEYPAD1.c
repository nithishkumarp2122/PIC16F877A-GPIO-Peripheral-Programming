
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

#define LCD PORTB
#define RS RC0
#define EN RC2

#define R1 RD0
#define R2 RD1
#define R3 RD2
#define R4 RD3
#define C1 RD4
#define C2 RD5
#define C3 RD6
#define C4 RD7

void lcd_init();
void send_cmd(unsigned char a);
void send_dat(unsigned char b);
void show_dat(unsigned char *s);
void keypad();
void row1();
void row2();
void row3();
void row4();  

int main(){
    TRISB = 0x00;   
    TRISC0 = 0;
    TRISC1 = 0;
    TRISD = 0XF0;
	lcd_init();
	while(1)
		{
			send_cmd(0x80);
			show_dat("Enter the Number");
			send_cmd(0xC0);
			keypad();
		}
	}
	
void lcd_init()
	{
		send_cmd(0x38);
		send_cmd(0x0e);
		send_cmd(0x01);
		send_cmd(0x06);
		send_cmd(0x80);
		send_cmd(0x0c);
	}

void send_cmd(unsigned char a)
	{
		LCD=a;
		RS=0;	
		E=1;
		__delay_ms(10);
		E=0;
	}

void send_dat(unsigned char b)
	{
		LCD=b;
		RS=1;
		E=1;
		__delay_ms(10);
		E=0;
	}

void show_dat(unsigned char *s)
	{
		while(*s)
			{
				send_dat(*s++);
			}
	}



void keypad()
	{
		row1();
		row2();
		row3();
		row4();
	}

void row1()
	{
	  C1=C2=C3=C4=1;
		R2=R3=R4=1;
		R1=0;
		if(C1==R1)
		{
			send_dat('7'); // led = 0xFF
			while(C1==R1);
		}
		else if(C2==R1)
		{
			send_dat('8');
			while(C2==R1);
		}
		else if(C3==R1)
		{
			send_dat('9');
			while(C3==R1);
		}
		else if(C4==R1)
		{
			send_dat('/');
			while(C4==R1);
		}
	}

void row2()
	{
	  C1=C2=C3=C4=1;
		R1=R3=R4=1;
		R2=0;
		if(C1==R2)
		{
			send_dat('4'); // led = 0xFF
			while(C1==R2);
		}
		else if(C2==R2)
		{
			send_dat('5');
			while(C2==R2);
		}
		else if(C3==R2)
		{
			send_dat('6');
			while(C3==R2);
		}
		else if(C4==R2)
		{
			send_dat('*');
			while(C4==R2);
		}
	}
	
void row3()
	{
	  C1=C2=C3=C4=1;
		R2=R1=R4=1;
		R3=0;
		if(C1==R3)
		{
			send_dat('1'); // led = 0xFF
			while(C1==R3);
		}
		else if(C2==R3)
		{
			send_dat('2');
			while(C2==R3);
		}
		else if(C3==R3)
		{
			send_dat('3');
			while(C3==R3);
		}
		else if(C4==R3)
		{
			send_dat('-');
			while(C4==R3);
		}
	}
	
void row4()
	{
	  C1=C2=C3=C4=1;
		R2=R3=R1=1;
		R4=0;
		if(C1==R4)
		{
			send_cmd(0x01); // led = 0xFF
			while(C1==R4);
		}
		else if(C2==R4)
		{
			send_dat('0');
			while(C2==R4);
		}
		else if(C3==R4)
		{
			send_dat('=');
			while(C3==R4);
		}
		else if(C4==R4)
		{
            send_dat('+');
			while(C4==R4);
		}
	}