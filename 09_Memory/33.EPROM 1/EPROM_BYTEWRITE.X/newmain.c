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
#define _XTAL_FREQ 20000000
#define SS1 RC0   // Chip Select

void SPI_Master_init();
void SPI_Master_data(unsigned char a);
void SPI_write_byte();

int main()
{
    TRISC = 0x10;     // RC4 = SDI(input), others output
    SS1 = 1;          // CS idle high
    SPI_Master_init();
    SPI_write_byte();
    SS1 = 0;
    SPI_Master_data(0x04);  // WRDI
    SS1 = 1;
    while(1);
}

void SPI_Master_init()
{
    SSPCON  = 0x20;   // SPI Master mode, FOSC/4
    SSPSTAT = 0x00;   // SMP=0, CKE=0
}

void SPI_Master_data(unsigned char a)
{
    SSPBUF = a;
    while(!SSPIF);    // wait complete
    SSPIF = 0;
}

void SPI_write_byte()
{
    SS1 = 0;
    SPI_Master_data(0x06);  // WREN
    SS1 = 1;
    __delay_ms(10);

    SS1 = 0;
    SPI_Master_data(0x02);  // WRITE
    SPI_Master_data(0x00);  // ADDRESS HIGH
    SPI_Master_data(0xEF);  // ADDRESS LOW
    SPI_Master_data('N');   // DATA
    SS1 = 1;
    __delay_ms(10);

}
