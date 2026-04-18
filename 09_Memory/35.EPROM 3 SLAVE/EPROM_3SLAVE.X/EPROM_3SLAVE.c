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

#define SS1 RD0
#define SS2 RD1
#define SS3 RD7

void SPI_Master_init();
void SPI_Master_data(char a);
void SPI_write_byte1();
void SPI_write_byte2();
void SPI_write_byte3();

void SPI_Master_init()
{
    SSPCON = 0X20; 
    SSPSTAT = 0x00;
}

void SPI_Master_data(char a)
{
    SSPBUF  = a;
    while(SSPIF == 0);
    SSPIF   = 0;
    __delay_ms(10);
}

void SPI_write_byte1()
{
    int i;
    char str1[20]="NITHIS";
    SS1     = 1;
    __delay_ms(1);
    SS1     = 0;

    SPI_Master_data(0x06); //0000 0110

    SS1    = 1;
    __delay_ms(10);
    SS1    = 0;

    SPI_Master_data(0x02);//0000 0010
    SPI_Master_data(0x00);
    SPI_Master_data(0x00);
    
    for(i=0;str1[i]!='\0';i++)
    {
        SPI_Master_data(str1[i]);
    }
    
    SS1    = 1;
    __delay_ms(10);
    SS1    = 0;

    SPI_Master_data(0x04);
    SS1     = 1;
    }
void SPI_write_byte2()
{
    int j;
    char str2[20]="Embedded";
    
    SS2     = 1;
    __delay_ms(1);
    SS2     = 0;

    SPI_Master_data(0x06);

    SS2     = 1;
    __delay_ms(10);
    SS2     = 0;

    SPI_Master_data(0x02);
    SPI_Master_data(0x00);
    SPI_Master_data(0x28);
    
    for(j = 0;str2[j]!='\0'; j++)
    {
        SPI_Master_data(str2[j]);
    }

    SS2     = 1;
    __delay_ms(10);
    SS2     = 0;

    SPI_Master_data(0x04);
    SS2     = 1;
    }
void SPI_write_byte3()
{
    int j;
    char str2[20]="Embedded";
    
    SS3     = 1;
    __delay_ms(10);
    SS3     = 0;

    SPI_Master_data(0x06);

    SS3     = 1;
    __delay_ms(10);
    SS3     = 0;

    SPI_Master_data(0x02);
    SPI_Master_data(0x00);
    SPI_Master_data(0x28);
    
    for(j = 0;str2[j]!='\0'; j++)
    {
        SPI_Master_data(str2[j]);
    }

    SS3     = 1;
    __delay_ms(10);
    SS3     = 0;

    SPI_Master_data(0x04);
    SS3     = 1;
    }
int main()
{
    
    TRISC = 0X10;
    TRISD = 0X00;
    SPI_Master_init();
    
    SPI_write_byte1();
    __delay_ms(1000);
    
    SPI_write_byte2();
    __delay_ms(1000);
    
    SPI_write_byte3();
    __delay_ms(1000);
    while(1);
}