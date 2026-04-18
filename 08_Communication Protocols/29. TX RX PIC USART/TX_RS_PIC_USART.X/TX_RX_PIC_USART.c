// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

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
#define lcd_data PORTB

#define RS RC2
#define RW RC1
#define EN RC0

void lcd_init();
void send_cmd(char a);
void send_data(char b);
void show_data(char *s);

void USART_ASYNC_TX_RX();  //Initializes the USART module for asynchronous
void TX(char a);  //Transmits a single character a through the USART.
unsigned char RX();  //Receives a single character through the UART


int main()
{
    TRISB  = 0;
    TRISC6 = 0;
    TRISC7 = 1;
    TRISC0 = 0;
    TRISC1 = 0;
    TRISC2 = 0;
    TRISD  = 0x00;

    char GET;
    TRISC6 = 0;
    TRISC7 = 1;
    
    USART_ASYNC_TX_RX();
    lcd_init();
    
    while(1)
    {
        
        GET = RX();  //Receives a character and stores it in GET
        RX_(char *S) 
{
    while(*S)
    {
        RX(*S++);
    }
}
        send_cmd(0x80);
        send_data(GET);
   
    }
}


void USART_ASYNC_TX_RX()
{
    TXSTA = 0X26; //0010 0110
    RCSTA = 0X90; //1001 0000
    SPBRG = 129; 
}

unsigned char RX()
{
    while(RCIF == 0);
    return RCREG;
}


void TX(char a)
{
    TXREG = a;
    while(TRMT == 0);
}

void lcd_init()
{
    send_cmd(0x38);
    send_cmd(0x0e);
    send_cmd(0x01);
    send_cmd(0x06);
    send_cmd(0x80);
    send_cmd(0x0c);
}

void send_cmd(char a)
{
    lcd_data = a;
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_ms(1);
    EN = 0;
}


void send_data(char b)
	{
		lcd_data=b;
		RS=1;
		RW=0;
		EN=1;
		__delay_ms(100);
		EN=0;
	}

void show_data(char *s)
	{
		while(*s)
			{
				send_data(*s++);
			}
	}
