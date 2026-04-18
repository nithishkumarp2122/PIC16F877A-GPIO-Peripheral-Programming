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

#define LCD PORTD
#define RS RC0
#define RW RC1
#define EN RC2

volatile unsigned char lcd_flag = 0;
void lcd_init(void);
void send_cmd(char);
void send_data(char);
void show_data(const char *);
void __interrupt() isr(void);

void __interrupt() isr(void)
{
    if (INTF)              // External interrupt RB0
    {
        lcd_flag = 1;      // Request LCD update
        INTF = 0;          // Clear interrupt flag
    }
}


void main(void)
{
    TRISB0 = 1;      // RB0 as input (INT)
    TRISC = 0x00;    // LCD control pins
    TRISD = 0x00;    // LCD data pins
    PORTD = 0x00;

    lcd_init();
    OPTION_REG = 0x40;   // INTEDG = 1 (rising edge)
    INTCON     = 0x90;   // GIE=1, INTE=1
    send_cmd(0x80);
    show_data("SYSTEM READY");

    while (1)
    {
        if (lcd_flag)
        {
            lcd_flag = 0;

            send_cmd(0x01);        // Clear LCD
            send_cmd(0x80);
            show_data("NITHISH");
            send_cmd(0xC0);
            show_data("KUMAR");
        }
    }
}



void lcd_init(void)
{
    __delay_ms(20);
    send_cmd(0x38);   // 8-bit, 2-line
    send_cmd(0x0C);   // Display ON
    send_cmd(0x01);   // Clear
    send_cmd(0x06);   // Entry mode
}

void send_cmd(char c)
{
    LCD = c;
    RS = 0; 
    RW = 0; 
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void send_data(char d)
{
    LCD = d;
    RS = 1; 
    RW = 0; 
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void show_data(const char *ptr)
{
    while (*ptr)
        send_data(*ptr++);
}
