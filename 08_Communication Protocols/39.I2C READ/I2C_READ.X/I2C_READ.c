#include <xc.h>

#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config BOREN = OFF
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 20000000

#define lcd PORTB
#define RS RD0
#define RW RD1
#define EN RD2

void I2C_master_init(void);
void I2C_master_wait(void);
void I2C_master_start(void);
void I2C_master_repeated_start(void);
void I2C_master_stop(void);
void I2C_master_write(unsigned char);
unsigned char I2C_master_read(unsigned char);

void lcd_init(void);
void send_cmd(unsigned char);
void send_data(unsigned char);
void show_data(char *);

unsigned char data;

void main()
{
    TRISB = 0x00;
    TRISD = 0x00;
    lcd = 0x00;

    unsigned char i;
    lcd_init();
    I2C_master_init();
    send_cmd(0x80);
    show_data("Received data");
    
    /* EEPROM WRITE */
    I2C_master_start();
    I2C_master_write(0xAE);
    I2C_master_write(0x00);
    I2C_master_write(0x00);

    for(i = 'A'; i <= 'Z'; i++)
        I2C_master_write(i);
    I2C_master_stop();
    __delay_ms(10);

    /* EEPROM READ */
    I2C_master_start();
    I2C_master_write(0xAE);
    I2C_master_write(0x00);
    I2C_master_write(0x00);
    I2C_master_repeated_start();
    I2C_master_write(0xAF);

    send_cmd(0xC0);

    for(i = 0; i < 12; i++)
    {
        data = I2C_master_read(i == 11);
        send_data(data);
    }

    I2C_master_stop();

    while(1);
}

/* -------- I2C FUNCTIONS -------- */

void I2C_master_init()
{
    SSPCON  = 0x28;     // Master mode
    SSPCON2 = 0x00;
    SSPSTAT = 0x80;     // SMP = 1
    SSPADD  = 0x19;     // 100kHz @ 20MHz
    TRISC3 = 1;
    TRISC4 = 1;
}

void I2C_master_wait()
{
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
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

void I2C_master_write(unsigned char data)
{
    I2C_master_wait();
    SSPBUF = data;
}

unsigned char I2C_master_read(unsigned char ack)
{
    unsigned char temp;
    I2C_master_wait();
    RCEN = 1;
    I2C_master_wait();
    temp = SSPBUF;
    I2C_master_wait();
    ACKDT = ack;
    ACKEN = 1;
    return temp;
}

/* -------- LCD FUNCTIONS -------- */

void lcd_init()
{
    __delay_ms(20);
    send_cmd(0x38);
    send_cmd(0x0C);
    send_cmd(0x01);
    send_cmd(0x06);
}

void send_cmd(unsigned char cmd)
{
    lcd = cmd;
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void send_data(unsigned char dat)
{
    lcd = dat;
    RS = 1;
    RW = 0;
    EN = 1;
    __delay_ms(2);
    EN = 0;
}

void show_data(char *s)
{
    while(*s)
        send_data(*s++);
}
