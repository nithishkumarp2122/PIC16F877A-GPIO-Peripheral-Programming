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
#define RS  RC0
#define RW  RC1
#define EN  RC2

void lcd_init();
void send_cmd(char a);
void send_data(char b);
void show_data(char *s);

unsigned int result;
float voltage, temp_c;

void __interrupt() ISR(void)
{
    if (ADIF)                     // ADC interrupt flag
    {
        ADIF = 0;                 // Clear ADC flag

        result = ((ADRESH << 8) | ADRESL);
        voltage = (result * 5.0) / 1023.0;
        temp_c = voltage * 100.0;
    }
}

void main()
{
    TRISB = 0x00;
    TRISC = 0x00;
    TRISA = 0x01;                 // AN0 input

    ADCON0 = 0xA9;                // ADC ON, channel 0
    ADCON1 = 0x80;                // Right justified, Vref=Vdd

    ADIE = 1;                     // Enable ADC interrupt
    PEIE = 1;                     // Enable peripheral interrupt
    GIE  = 1;                     // Enable global interrupt

    lcd_init();
    send_cmd(0x80);
    show_data("LM35 Temp Sensor");

    while (1)
    {
        GO_DONE = 1;              // Start ADC conversion
        __delay_ms(500);

        char d[16];
        send_cmd(0xC0);
        sprintf(d, "Temp=%.2fC", temp_c);
        show_data(d);
    }
}

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
