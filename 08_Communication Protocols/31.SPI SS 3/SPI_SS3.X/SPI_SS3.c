// PIC16F877A Configuration Bit Settings

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

#define SS1 RD0
#define SS2 RD1
#define SS3 RD2

// FUNCTION PROTOTYPES
void string_data(char *s);
void data_tx(char a);
void master_init();
void slave1_init();
void slave2_init();
void slave3_init();

// MAIN
int main()
{
    master_init();

    slave1_init();
    __delay_ms(10);

    slave2_init();
    __delay_ms(10);

    slave3_init();
    __delay_ms(10);

    while(1);
}

// SLAVE 1
void slave1_init()
{
    SS1 = 1;
    __delay_ms(10);
    SS1 = 0;
    string_data("NITHISH");
    SS1 = 1;
}

// SLAVE 2
void slave2_init()
{
    SS2 = 1;
    __delay_ms(10);
    SS2 = 0;
    string_data("KUMAR");
    SS2 = 1;
}

// SLAVE 3
void slave3_init()
{
    SS3 = 1;
    __delay_ms(10);
    SS3 = 0;
    string_data("P");
    SS3 = 1;
}

// SPI SEND SINGLE BYTE
void data_tx(char a)
{
    SSPBUF = a;      // Load data into SPI buffer
    while(SSPIF == 0);
    SSPIF = 0;       // Clear flag
}

// MASTER INIT
void master_init()
{
    TRISC = 0x10;       // RC3=SCK(output), RC4=SDI(input), RC5=SDO(output)
    TRISD = 0x00;       // Chip select pins output

    SSPSTAT = 0x00;
    SSPCON  = 0x20;     // SPI Master, Fosc/4
}

// SEND STRING BYTE BY BYTE
void string_data(char *s)
{
    while(*s)
    {
        data_tx(*s++);
    }
}

