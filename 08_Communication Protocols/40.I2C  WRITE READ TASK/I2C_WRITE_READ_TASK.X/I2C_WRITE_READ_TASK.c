// PIC16F877A Configuration Bit Settings
#pragma config FOSC = HS, WDTE = OFF, PWRTE = OFF, BOREN = OFF, LVP = OFF, CPD = OFF, WRT = OFF, CP = OFF

#include <xc.h>
#define _XTAL_FREQ 20000000
#define LCD PORTB
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
void show_data(char *ptr);

unsigned char data;






int main() {
    unsigned char str[20] = "Nithish";
    unsigned char str1[20] = "Kumar";
    unsigned char str2[20] = "Embedded";
    
    TRISB = 0X00;
    TRISD = 0X00;
    LCD   = 0x00;
    unsigned int i;
    
    lcd_init();
    I2C_master_init();

    // --- WRITE TO SLAVE 1 (0xAA) ---
    I2C_master_start();
    I2C_master_write(0xAA);
    I2C_master_write(0x00); // Address High
    I2C_master_write(0x28); // Address Low
    for(i=0; i<10; i++) 
    I2C_master_write(str[i]);
    I2C_master_stop();
    __delay_ms(10); // Required write cycle delay

    // --- WRITE TO SLAVE 2 (0xAC) ---
    I2C_master_start();
    I2C_master_write(0xAC);
    I2C_master_write(0x00);
    I2C_master_write(0x50);
    for(i=0; i<10; i++) 
    {
    I2C_master_write(str1[i]);
    }
    I2C_master_stop();
    __delay_ms(10);

    // --- WRITE TO SLAVE 3 (0xA4) ---
    I2C_master_start();
    I2C_master_write(0xA4);
    I2C_master_write(0x00);
    I2C_master_write(0x00);
    for(i=0; i<10; i++) 
       I2C_master_write(str2[i]);
    I2C_master_stop();
    __delay_ms(10);

    // --- READ FROM SLAVE 1 ---
    I2C_master_start();
    I2C_master_write(0xAA);
    I2C_master_write(0x00);
    I2C_master_write(0x28);
    I2C_master_repeated_start();
    I2C_master_write(0xAB); // Read Address 1
    send_cmd(0x80);
    show_data("EEPROM0: ");
    for(i=0;i<15;i++)
   {
   if(i<14)
   {
       data=I2C_master_read(0);// 0 ack
   }
   else
   {
       data=I2C_master_read(1);// 1 not ack
   }
     send_data(data);
   }
    I2C_master_stop();
    __delay_ms(1000);

    // --- READ FROM SLAVE 2 ---
    send_cmd(0x01); // Clear LCD
    I2C_master_start();
    I2C_master_write(0xAC);
    I2C_master_write(0x00);
    I2C_master_write(0x50);
    I2C_master_repeated_start();
    I2C_master_write(0xAD); // Read Address 2
    send_cmd(0x80);
    show_data("EEPROM1: ");
    for(i=0;i<15;i++)
   {
   if(i<14)
   {
       data=I2C_master_read(0);// 0 ack
   }
   else
   {
       data=I2C_master_read(1);// 1 not ack
   }
     send_data(data);
   }
    I2C_master_stop();
    __delay_ms(2000);

    // --- READ FROM SLAVE 3 ---
    send_cmd(0x01);
    I2C_master_start();
    I2C_master_write(0xA4);
    I2C_master_write(0x00);
    I2C_master_write(0x00);
    I2C_master_repeated_start();
    I2C_master_write(0xA5); // Read Address 3
    send_cmd(0x80);
    show_data("EEPROM2: ");
   for(i=0;i<20;i++)
   {
   if(i<19)
   {
       data=I2C_master_read(0);// 0 ack
   }
   else
   {
       data=I2C_master_read(1);// 1 not ack
   }
     send_data(data);
   }
    I2C_master_stop();
    while(1);
}

// I2C and LCD functions remain the same as your original definitions
void I2C_master_init() {
    SSPCON = 0X28;
    SSPCON2 = 0X00;
    SSPSTAT = 0X00;
    SSPADD = 0x31; // 100KHz for 20MHz clock
    TRISC = 0x18;
}

void I2C_master_wait() 
{
    while((SSPSTAT & 0X04) || (SSPCON2 & 0X1F));
}

void I2C_master_start()
{
    I2C_master_wait();
    SEN = 1;
}

void I2C_master_repeated_start() 
{
    I2C_master_wait();
    RSEN = 1;
}

void I2C_master_stop() 
{
    I2C_master_wait();
    PEN = 1;
}

void I2C_master_write(unsigned char a) 
{
    I2C_master_wait();
    SSPBUF = a;
}

unsigned char I2C_master_read(unsigned char b) {
    unsigned char temp;
    I2C_master_wait();
    RCEN = 1;
    I2C_master_wait();
    temp = SSPBUF;
    I2C_master_wait();
    ACKDT = b; // 0 for ACK, 1 for NACK
    ACKEN = 1;
    return temp;
}

void lcd_init() 
{
    send_cmd(0x38);
    send_cmd(0x0C);
    send_cmd(0x01);
    send_cmd(0x06);
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

void show_data(char* ptr)
{
    while(*ptr) 
    send_data(*ptr++);
}