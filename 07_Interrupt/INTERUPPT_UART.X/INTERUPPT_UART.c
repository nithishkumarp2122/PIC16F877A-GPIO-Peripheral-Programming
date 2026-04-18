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

char GET;
void TX(char a);
void TX_STRING(const char *s);

/* ---------- Interrupt Service Routine ---------- */
void __interrupt() ISR(void)
{
    if (RCIF)                  // UART Receive Interrupt
    {
        GET = RCREG;            // Read received character (clears RCIF)
        TX(GET);                // Echo back
    }
}

/* ---------- Transmit single character ---------- */
void TX(char a)
{
    while (TXIF == 0);          // Wait until TX buffer is empty
    TXREG = a;
}

/* ---------- Transmit string ---------- */
void TX_STRING(const char *s)
{
    while (*s)
    {
        TX(*s++);
    }
}

void main(void)
{
    TRISC6 = 0;                // TX pin output
    TRISC7 = 1;                // RX pin input

    TXSTA = 0x26;              // Enable TX, async mode, high speed
    RCSTA = 0x90;              // Enable serial port & receiver
    SPBRG = 129;               // 9600 baud @ 20MHz

    RCIE = 1;                  // Enable RX interrupt
    PEIE = 1;                  // Peripheral interrupt enable
    GIE  = 1;                  // Global interrupt enable

    TX_STRING("Hello");    // Send message once

    while (1);
    
}
