
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
#define SS1 RC0

void SPI_Master_init();
void SPI_Master_data(unsigned char a);
void SPI_write_byte();
void SPI_write_page();
void SPI_clear();

void SPI_Master_init()
{
 
    SSPCON = 0X20; 
    SSPSTAT = 0x00;
}

void SPI_Master_data(unsigned char a)
{
    SSPBUF  = a;
    while(SSPIF == 0);
    SSPIF   = 0;
}

void SPI_write_byte()
{
    SS1     = 1;
    __delay_ms(10);
    SS1     = 0;

    SPI_Master_data(0x06);// 0000 0110

    SS1     = 1;
    __delay_ms(10);
    SS1     = 0;

    SPI_Master_data(0x02);//0000 0010
    SPI_Master_data(0x00);
    SPI_Master_data(0x20);
    SPI_Master_data('H');

    SS1     = 1;
    __delay_ms(10);
    SS1     = 0;

    SPI_Master_data(0x04);//0000 0100
    SS1     = 1;
}

void SPI_write_page()
{
    unsigned int i;
    SS1     = 1;
    __delay_ms(10);
    SS1     = 0;

    SPI_Master_data(0x06);

    SS1     = 1;
    __delay_ms(10);
    SS1     = 0;

    SPI_Master_data(0x02);
    SPI_Master_data(0x00);
    SPI_Master_data(0x00);
    for(i = 'A'; i <= 'Z'; i++)
    {
        SPI_Master_data(i);
    }

    SS1     = 1;
    __delay_ms(10);
    SS1     = 0;

    SPI_Master_data(0x04);
    SS1     = 1;
    }


int main()
{
    TRISC = 0X10;
    SPI_Master_init();
    SPI_write_byte();
    __delay_ms(1000);
    SPI_write_page();
    __delay_ms(1000);
    while(1);
}

