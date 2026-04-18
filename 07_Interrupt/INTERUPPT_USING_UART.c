

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
char message[] = "HELLO";
unsigned char i = 0;

void __interrupt() ISR(void)
{

void TX(char a)
{
    TXREG = a;
    while(TRMT == 0);//TXIF==0
    //TXIF=0;
}

unsigned char RX()
{
    while(RCIF == 0);
    RCIF = 0;
    return RCREG;
}

void TX_STRING(char *S) 
{
    while(*S)
    {
        TX(*S++);
    }
}

{
        TX_STRING(" Hello "); 
        GET = RX(); 
        TX(GET); 
        __delay_ms(1000);
    }
}

int main()
{
    char GET;
    TRISC6 = 0;
    TRISC7 = 1;
    
    TXSTA = 0X26; //0010 0110
    RCSTA = 0X90; //1001 0000
    SPBRG = 129; //Sets the baud rate value for a baud rate of 9600 at 20 MHz crystal frequency.
    
    TXIE = 1;         // Enable UART TX interrupt
    RCIE = 1;         // Enable UART RX interrupt (optional)
    PEIE = 1;         // Enable peripheral interrupt
    GIE = 1;          // Enable global interrupt
}
    while(1);
    
}






void main(void)
{
    SPBRG = 31;
    TXSTA = 0x24;     // BRGH=1, TXEN=1
    RCSTA = 0x90;     // SPEN=1, CREN=1
    TRISC6 = 0;       // TX pin output
    TRISC7 = 1;       // RX pin input
 while(1)
    {
        TX_STRING(" Hello "); 
        GET = RX(); 
        TX(GET); 
        __delay_ms(1000);
    }
    


    
    
  