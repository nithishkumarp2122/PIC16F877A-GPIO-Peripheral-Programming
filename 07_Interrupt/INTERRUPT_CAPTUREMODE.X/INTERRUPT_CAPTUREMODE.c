// PIC16F877A Configuration Bit Settings

#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config BOREN = OFF
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#include <xc.h>
#include <stdio.h>

#define _XTAL_FREQ 20000000

#define lcd PORTB
#define RS RD7
#define RW RD6
#define EN RD5

void lcd_init();
void send_cmd(char a);
void send_data(char b);
void show_data(char *s);
void timer1_init();
void capture_init();

/* -------- GLOBAL VARIABLES (ISR needs them) -------- */
unsigned int cap;
char result[10];

/* -------- INTERRUPT SERVICE ROUTINE -------- */
void __interrupt() ISR(void)
{
    if (CCP2IF)                    // Check CCP2 interrupt
    {
        CCP2IF = 0;                // Clear flag

        cap = ((CCPR2H << 8) | CCPR2L);

        send_cmd(0xC0);
        sprintf(result, "%05u", cap);
        show_data(result);
    }
}

void main()
{
    TRISB = 0x00;                  // LCD data
    TRISD = 0x00;                  // LCD control
    TRISC1 = 1;                    // CCP2 input (RC1)

    lcd_init();
    timer1_init();
    capture_init();
    send_cmd(0x80);
    show_data("Captured Value");

    CCP2IE = 1;                    // Enable CCP2 interrupt
    PEIE   = 1;                    // Peripheral interrupt
    GIE    = 1;                    // Global interrupt
    
    while (1);
}

/* -------- LCD FUNCTIONS -------- */

void lcd_init()
{
    send_cmd(0x38);
    send_cmd(0x0C);
    send_cmd(0x01);
    send_cmd(0x06);
}

void send_cmd(char a)
{
    lcd = a;
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void send_data(char b)
{
    lcd = b;
    RS = 1;
    RW = 0;
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void show_data(char *s)
{
    while (*s)
        send_data(*s++);
}

/* -------- TIMER1 INITIALIZATION -------- */
void timer1_init()
{
    T1CON = 0x31;                  // Timer1 ON, prescaler 1:8
    TMR1H = 0;
    TMR1L = 0;
}

/* -------- CCP2 CAPTURE INITIALIZATION -------- */
void capture_init()
{
    CCP2CON = 0x05;                // Capture mode: rising edge
    CCPR2H = 0;
    CCPR2L = 0;
}
