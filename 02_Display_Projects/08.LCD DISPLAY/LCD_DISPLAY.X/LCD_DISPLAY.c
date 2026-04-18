
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
#define _XTAL_FREQ 2000000
#define lcd_data PORTB

#define RS RC0
#define RW RC1
#define EN RC2

void lcd_init();
void send_cmd(char a);
void send_data(char b);
void show_data(char *s);
void lcd_delay(int ms);

void main(void)
{
    TRISB = 0x00;
    TRISC = 0x00;
    lcd_data = 0x00;
    lcd_init();

    while(1)
    {
        send_cmd(0x80);      // first line
        send_data('K');
        send_cmd(0xC0);      // second line
        show_data("hello");
        lcd_delay(1000);
        send_cmd(0x01);      // clear display
        lcd_delay(100);
    }
}

void lcd_init()
{
    send_cmd(0x38);
    send_cmd(0x0E);
    send_cmd(0x01);
    send_cmd(0x06);
}

void send_cmd(char a)
{
    lcd_data = a;
    RS = 0;
    RW = 0;
    EN = 1;
    lcd_delay(1);
    EN = 0;
}

void send_data(char b)
{
    lcd_data = b;
    RS = 1;
    RW = 0;
    EN = 1;
    lcd_delay(1);
    EN = 0;
}

void show_data(char *s)
{
    while(*s)
    {
        send_data(*s++);
    }
}

void lcd_delay(int ms)
{
    while(ms--)
        __delay_ms(1);
}

