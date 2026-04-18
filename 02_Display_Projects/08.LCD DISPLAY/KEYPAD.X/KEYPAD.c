
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

// PIC16F877A Configuration Bit Settings
// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage ICSP Disable
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (off)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (off)

#include <xc.h>
#include <stdio.h>

#define _XTAL_FREQ 20000000   // 20MHz Crystal

// LCD connections
#define lcd_data PORTD
#define RS RC0
#define RW RC1
#define EN RC2

// Keypad connections
#define R1 RB0
#define R2 RB1
#define R3 RB2
#define R4 RB3
#define C1 RB4
#define C2 RB5
#define C3 RB6
#define C4 RB7

// Global variables
int a, b, r;
char c;

// ---------------- PROTOTYPES ----------------
void lcd_init(void);
void send_cmd(unsigned char a);
void send_dat(unsigned char b);
void show_dat(char *s);
void keypad(void);
void calculation(void);

// ---------------- MAIN ----------------
void main(void)
{
    TRISB = 0xF0;   // RB as input (Keypad)
    TRISC = 0x00;   // RC as output (LCD control)
    TRISD = 0x00;   // RD as output (LCD data)

    lcd_init();
    show_dat("ENTER A NUMBER");
    send_cmd(0xC0);   // Move cursor to 2nd line

    while (1)
    {
        keypad();
    }
}

// ---------------- LCD FUNCTIONS ----------------
void send_cmd(unsigned char a)
{
    lcd_data = a;
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void lcd_init(void)
{
    send_cmd(0x38); // 8-bit, 2 line, 5x7
    send_cmd(0x01); // clear display
    send_cmd(0x0C); // display on, cursor off
    send_cmd(0x06); // entry mode
}

void send_dat(unsigned char b)
{
    lcd_data = b;
    RS = 1;
    RW = 0;
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void show_dat(char *s)
{
    while (*s)
    {
        send_dat(*s++);
    }
}

// ---------------- KEYPAD FUNCTION ----------------
void keypad(void)
{
    // First Row
    C1 = C2 = C3 = C4 = 1;
    R2 = R3 = R4 = 1;
    R1 = 0;
    if (C1 == 0) { send_dat('7'); a = 7; while(C1==0); }
    if (C2 == 0) { send_dat('8'); a = 8; while(C2==0); }
    if (C3 == 0) { send_dat('9'); a = 9; while(C3==0); }
    if (C4 == 0) { send_dat('/'); c = '/'; b = a; while(C4==0); }

    // Second Row
    C1 = C2 = C3 = C4 = 1;
    R1 = R3 = R4 = 1;
    R2 = 0;
    if (C1 == 0) { send_dat('4'); a = 4; while(C1==0); }
    if (C2 == 0) { send_dat('5'); a = 5; while(C2==0); }
    if (C3 == 0) { send_dat('6'); a = 6; while(C3==0); }
    if (C4 == 0) { send_dat(''); c = ''; b = a; while(C4==0); }

    // Third Row
    C1 = C2 = C3 = C4 = 1;
    R1 = R2 = R4 = 1;
    R3 = 0;
    if (C1 == 0) { send_dat('1'); a = 1; while(C1==0); }
    if (C2 == 0) { send_dat('2'); a = 2; while(C2==0); }
    if (C3 == 0) { send_dat('3'); a = 3; while(C3==0); }
    if (C4 == 0) { send_dat('-'); c = '-'; b = a; while(C4==0); }

    // Fourth Row
    C1 = C2 = C3 = C4 = 1;
    R1 = R2 = R3 = 1;
    R4 = 0;
    if (C1 == 0) { lcd_init(); show_dat("ENTER A NUMBER"); while(C1==0); }
    if (C2 == 0) { send_dat('0'); a = 0; while(C2==0); }
    if (C3 == 0) { send_dat('='); calculation(); while(C3==0); }
    if (C4 == 0) { send_dat('+'); c = '+'; b = a; while(C4==0); }
}

// ---------------- CALCULATION ----------------
void calculation(void)
{
    switch (c)
    {
        case '+': r = b + a; break;
        case '-': r = b - a; break;
        case '*': r = b * a; break;
        case '/': r = (a != 0) ? (b / a) : 0; break;
        default : r = 0; break;
    }
    char result[10];
    sprintf(result, "%d", r);  // convert number to string
    show_dat(result);
}