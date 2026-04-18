
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
#define lcd PORTB
#define RS RD0
#define RW RD1
#define EN RD2
void I2C_master_init();
void I2C_master_wait();
void I2C_master_start();
void I2C_master_repeated_start();
void I2C_master_stop();
void I2C_master_write(unsigned char a);
unsigned char I2C_master_read(unsigned char b);
void lcd_init();
void send_cmd(char c);
void send_data(char d);
void show_data(char *s);
unsigned char data;
int main()
{
    lcd=0x00;
    TRISB=0X00;
    TRISD=0X00;
    unsigned int i;
   lcd_init();
   I2C_master_init();
   send_cmd(0x80);
   show_data("Received data");
   I2C_master_start();
   I2C_master_write(0xae);// 1010 1110
   I2C_master_write(0x00);
   I2C_master_write(0x00);
   for(i='A';i<='Z';i++)
   {
       I2C_master_write(i);
   }
   I2C_master_stop();
   
   __delay_ms(1000);
   
   I2C_master_start();
   I2C_master_write(0xae);// 1010 1110
   I2C_master_write(0x00);
   I2C_master_write(0x00);
   I2C_master_repeated_start();
   I2C_master_write(0xaf); // 1010 1111
   send_cmd(0xc0);
   for(i=0;i<12;i++)
   {
   if(i<11)
   {
       data=I2C_master_read(0);// 0 ack
   }
   else
   {
       data=I2C_master_read(1);// 1 not ack
   }
     send_data(data);
   }
  // I2C_master_read(0);// 0 ack, 1 not ack
   I2C_master_stop();
   while(1);
}
void I2C_master_init()
{
SSPCON=0X28;
SSPCON2=0X00;
SSPSTAT=0X00;
SSPADD=0X19;
TRISC=0x18;
}
void I2C_master_wait()
{
    while((SSPSTAT & 0X04) || (SSPCON2 & 0X1F));
}
void I2C_master_start()
{
    I2C_master_wait();
    SEN=1;
}
void I2C_master_repeated_start()
{
    I2C_master_wait();
    RSEN=1;
}
void I2C_master_stop()
{
    I2C_master_wait();
    PEN=1;
}
void I2C_master_write(unsigned char a)
{
    I2C_master_wait();
    SSPBUF=a;
}
unsigned char I2C_master_read(unsigned char b)
{
    unsigned char temp;
    I2C_master_wait();
    RCEN=1;
    I2C_master_wait();
    temp=SSPBUF;
    I2C_master_wait();
    ACKDT=b;
    ACKEN=1;
    RCEN=0;
    return temp;
}
void lcd_init()
{
    send_cmd(0x38);
    send_cmd(0x0E);
    send_cmd(0x01);
    send_cmd(0x06);
    send_cmd(0x80);
    send_cmd(0x0C);
}

void send_cmd(char a)
{
    lcd_data = a;
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void send_data(char b)
{
    lcd_data = b;
    RS = 1;
    RW = 0;
    EN = 1;
    __delay_ms(200);
    EN = 0;
}

void show_data(char *s)
{
    while(*s)
    {
        send_data(*s++);
    }
}
