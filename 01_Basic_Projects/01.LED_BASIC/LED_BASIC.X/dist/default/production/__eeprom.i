# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\sources\\c99\\pic\\__eeprom.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 294 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/language_support.h" 1 3
# 29 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/language_support.h" 3
// set _HTC_EDITION_ and _XC8_MODE_ macros for backwards compatibility
# 2 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\sources\\c99\\pic\\__eeprom.c" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/xc8debug.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/musl_xc8.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 2 3





# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/features.h" 1 3
# 11 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 2 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 1 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int wchar_t;
# 128 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 22 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);



double atof (const char *);


float strtof (const char *, char **);
double strtod (const char *, char **);
long double strtold (const char *, char **);



long strtol (const char *, char **, int);
unsigned long strtoul (const char *, char **, int);





unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);
# 55 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);




typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;




div_t div (int, int);
ldiv_t ldiv (long, long);




typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 1 3
# 26 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 1 3
# 133 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned short uintptr_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef short intptr_t;
# 164 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int32_t;
# 192 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef int32_t intmax_t;







typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long uint32_t;
# 233 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef uint32_t uintmax_t;
# 27 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 2 3

typedef int8_t int_fast8_t;




typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;




typedef uint8_t uint_fast8_t;




typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 2 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/builtins.h" 2 3

// builtin version of nop
#pragma intrinsic(__nop)
extern void __nop(void);
# 18 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/builtins.h" 3
// builtin delay functions
#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);





// NOTE: To use the macros below, YOU must have previously defined _XTAL_FREQ
# 25 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3



# 1 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include/pic.h" 1 3




# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/htc.h" 1 3






# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 1 3
# 8 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/htc.h" 2 3
# 6 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include/pic.h" 2 3







# 1 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include/pic_chip_select.h" 1 3
// Generated 12/10/2023 GMT
# 663 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include/pic_chip_select.h" 3
# 1 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 1 3
// Generated 12/10/2023 GMT
# 44 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/__at.h" 1 3
# 45 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 2 3





// Register: INDF

extern volatile unsigned char INDF __attribute__((address(0x000)));

__asm("INDF equ 00h");


// Register: TMR0

extern volatile unsigned char TMR0 __attribute__((address(0x001)));

__asm("TMR0 equ 01h");


// Register: PCL

extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");


// Register: STATUS

extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");

// bitfield definitions
typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned RP :2;
        unsigned IRP :1;
    };
    struct {
        unsigned :5;
        unsigned RP0 :1;
        unsigned RP1 :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
// bitfield macros
# 157 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: FSR

extern volatile unsigned char FSR __attribute__((address(0x004)));

__asm("FSR equ 04h");


// Register: PORTA

extern volatile unsigned char PORTA __attribute__((address(0x005)));

__asm("PORTA equ 05h");

// bitfield definitions
typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x005)));
// bitfield macros
# 214 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: PORTB

extern volatile unsigned char PORTB __attribute__((address(0x006)));

__asm("PORTB equ 06h");

// bitfield definitions
typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x006)));
// bitfield macros
# 276 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: PORTC

extern volatile unsigned char PORTC __attribute__((address(0x007)));

__asm("PORTC equ 07h");

// bitfield definitions
typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x007)));
// bitfield macros
# 338 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: PORTD

extern volatile unsigned char PORTD __attribute__((address(0x008)));

__asm("PORTD equ 08h");

// bitfield definitions
typedef union {
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0x008)));
// bitfield macros
# 400 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: PORTE

extern volatile unsigned char PORTE __attribute__((address(0x009)));

__asm("PORTE equ 09h");

// bitfield definitions
typedef union {
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0x009)));
// bitfield macros
# 432 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: PCLATH

extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");

// bitfield definitions
typedef union {
    struct {
        unsigned PCLATH :5;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
// bitfield macros






// Register: INTCON

extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");

// bitfield definitions
typedef union {
    struct {
        unsigned RBIF :1;
        unsigned INTF :1;
        unsigned TMR0IF :1;
        unsigned RBIE :1;
        unsigned INTE :1;
        unsigned TMR0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :2;
        unsigned T0IF :1;
        unsigned :2;
        unsigned T0IE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
// bitfield macros
# 530 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: PIR1

extern volatile unsigned char PIR1 __attribute__((address(0x00C)));

__asm("PIR1 equ 0Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSPIF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
        unsigned PSPIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x00C)));
// bitfield macros
# 592 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: PIR2

extern volatile unsigned char PIR2 __attribute__((address(0x00D)));

__asm("PIR2 equ 0Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP2IF :1;
        unsigned :2;
        unsigned BCLIF :1;
        unsigned EEIF :1;
        unsigned :1;
        unsigned CMIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x00D)));
// bitfield macros
# 632 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: TMR1

extern volatile unsigned short TMR1 __attribute__((address(0x00E)));

__asm("TMR1 equ 0Eh");


// Register: TMR1L

extern volatile unsigned char TMR1L __attribute__((address(0x00E)));

__asm("TMR1L equ 0Eh");


// Register: TMR1H

extern volatile unsigned char TMR1H __attribute__((address(0x00F)));

__asm("TMR1H equ 0Fh");


// Register: T1CON

extern volatile unsigned char T1CON __attribute__((address(0x010)));

__asm("T1CON equ 010h");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned TMR1CS :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS :2;
    };
    struct {
        unsigned :2;
        unsigned T1SYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
    struct {
        unsigned :2;
        unsigned T1INSYNC :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x010)));
// bitfield macros
# 728 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: TMR2

extern volatile unsigned char TMR2 __attribute__((address(0x011)));

__asm("TMR2 equ 011h");


// Register: T2CON

extern volatile unsigned char T2CON __attribute__((address(0x012)));

__asm("T2CON equ 012h");

// bitfield definitions
typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned TOUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned TOUTPS0 :1;
        unsigned TOUTPS1 :1;
        unsigned TOUTPS2 :1;
        unsigned TOUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x012)));
// bitfield macros
# 806 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: SSPBUF

extern volatile unsigned char SSPBUF __attribute__((address(0x013)));

__asm("SSPBUF equ 013h");


// Register: SSPCON

extern volatile unsigned char SSPCON __attribute__((address(0x014)));

__asm("SSPCON equ 014h");

// bitfield definitions
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0x014)));
// bitfield macros
# 883 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: CCPR1

extern volatile unsigned short CCPR1 __attribute__((address(0x015)));

__asm("CCPR1 equ 015h");


// Register: CCPR1L

extern volatile unsigned char CCPR1L __attribute__((address(0x015)));

__asm("CCPR1L equ 015h");


// Register: CCPR1H

extern volatile unsigned char CCPR1H __attribute__((address(0x016)));

__asm("CCPR1H equ 016h");


// Register: CCP1CON

extern volatile unsigned char CCP1CON __attribute__((address(0x017)));

__asm("CCP1CON equ 017h");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned CCP1Y :1;
        unsigned CCP1X :1;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x017)));
// bitfield macros
# 962 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: RCSTA

extern volatile unsigned char RCSTA __attribute__((address(0x018)));

__asm("RCSTA equ 018h");

// bitfield definitions
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned RCD8 :1;
        unsigned :5;
        unsigned RC9 :1;
    };
    struct {
        unsigned :6;
        unsigned nRC8 :1;
    };
    struct {
        unsigned :6;
        unsigned RC8_9 :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x018)));
// bitfield macros
# 1057 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: TXREG

extern volatile unsigned char TXREG __attribute__((address(0x019)));

__asm("TXREG equ 019h");


// Register: RCREG

extern volatile unsigned char RCREG __attribute__((address(0x01A)));

__asm("RCREG equ 01Ah");


// Register: CCPR2

extern volatile unsigned short CCPR2 __attribute__((address(0x01B)));

__asm("CCPR2 equ 01Bh");


// Register: CCPR2L

extern volatile unsigned char CCPR2L __attribute__((address(0x01B)));

__asm("CCPR2L equ 01Bh");


// Register: CCPR2H

extern volatile unsigned char CCPR2H __attribute__((address(0x01C)));

__asm("CCPR2H equ 01Ch");


// Register: CCP2CON

extern volatile unsigned char CCP2CON __attribute__((address(0x01D)));

__asm("CCP2CON equ 01Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned CCP2Y :1;
        unsigned CCP2X :1;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x01D)));
// bitfield macros
# 1150 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: ADRESH

extern volatile unsigned char ADRESH __attribute__((address(0x01E)));

__asm("ADRESH equ 01Eh");


// Register: ADCON0

extern volatile unsigned char ADCON0 __attribute__((address(0x01F)));

__asm("ADCON0 equ 01Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned ADON :1;
        unsigned :1;
        unsigned GO_nDONE :1;
        unsigned CHS :3;
        unsigned ADCS :2;
    };
    struct {
        unsigned :2;
        unsigned GO :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
    };
    struct {
        unsigned :2;
        unsigned nDONE :1;
    };
    struct {
        unsigned :2;
        unsigned GO_DONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x01F)));
// bitfield macros
# 1253 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: OPTION_REG

extern volatile unsigned char OPTION_REG __attribute__((address(0x081)));

__asm("OPTION_REG equ 081h");

// bitfield definitions
typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned INTEDG :1;
        unsigned nRBPU :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x081)));
// bitfield macros
# 1323 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: TRISA

extern volatile unsigned char TRISA __attribute__((address(0x085)));

__asm("TRISA equ 085h");

// bitfield definitions
typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x085)));
// bitfield macros
# 1373 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: TRISB

extern volatile unsigned char TRISB __attribute__((address(0x086)));

__asm("TRISB equ 086h");

// bitfield definitions
typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x086)));
// bitfield macros
# 1435 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: TRISC

extern volatile unsigned char TRISC __attribute__((address(0x087)));

__asm("TRISC equ 087h");

// bitfield definitions
typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x087)));
// bitfield macros
# 1497 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: TRISD

extern volatile unsigned char TRISD __attribute__((address(0x088)));

__asm("TRISD equ 088h");

// bitfield definitions
typedef union {
    struct {
        unsigned TRISD0 :1;
        unsigned TRISD1 :1;
        unsigned TRISD2 :1;
        unsigned TRISD3 :1;
        unsigned TRISD4 :1;
        unsigned TRISD5 :1;
        unsigned TRISD6 :1;
        unsigned TRISD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0x088)));
// bitfield macros
# 1559 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: TRISE

extern volatile unsigned char TRISE __attribute__((address(0x089)));

__asm("TRISE equ 089h");

// bitfield definitions
typedef union {
    struct {
        unsigned TRISE0 :1;
        unsigned TRISE1 :1;
        unsigned TRISE2 :1;
        unsigned :1;
        unsigned PSPMODE :1;
        unsigned IBOV :1;
        unsigned OBF :1;
        unsigned IBF :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0x089)));
// bitfield macros
# 1616 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: PIE1

extern volatile unsigned char PIE1 __attribute__((address(0x08C)));

__asm("PIE1 equ 08Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSPIE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
        unsigned PSPIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x08C)));
// bitfield macros
# 1678 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: PIE2

extern volatile unsigned char PIE2 __attribute__((address(0x08D)));

__asm("PIE2 equ 08Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned CCP2IE :1;
        unsigned :2;
        unsigned BCLIE :1;
        unsigned EEIE :1;
        unsigned :1;
        unsigned CMIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x08D)));
// bitfield macros
# 1718 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: PCON

extern volatile unsigned char PCON __attribute__((address(0x08E)));

__asm("PCON equ 08Eh");

// bitfield definitions
typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
    };
    struct {
        unsigned nBO :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x08E)));
// bitfield macros
# 1752 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: SSPCON2

extern volatile unsigned char SSPCON2 __attribute__((address(0x091)));

__asm("SSPCON2 equ 091h");

// bitfield definitions
typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0x091)));
// bitfield macros
# 1814 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: PR2

extern volatile unsigned char PR2 __attribute__((address(0x092)));

__asm("PR2 equ 092h");


// Register: SSPADD

extern volatile unsigned char SSPADD __attribute__((address(0x093)));

__asm("SSPADD equ 093h");


// Register: SSPSTAT

extern volatile unsigned char SSPSTAT __attribute__((address(0x094)));

__asm("SSPSTAT equ 094h");

// bitfield definitions
typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned :2;
        unsigned R :1;
        unsigned :2;
        unsigned D :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned I2C_DATA :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0x094)));
// bitfield macros
# 1997 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: TXSTA

extern volatile unsigned char TXSTA __attribute__((address(0x098)));

__asm("TXSTA equ 098h");

// bitfield definitions
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TXD8 :1;
        unsigned :5;
        unsigned nTX8 :1;
    };
    struct {
        unsigned :6;
        unsigned TX8_9 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x098)));
// bitfield macros
# 2078 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: SPBRG

extern volatile unsigned char SPBRG __attribute__((address(0x099)));

__asm("SPBRG equ 099h");


// Register: CMCON

extern volatile unsigned char CMCON __attribute__((address(0x09C)));

__asm("CMCON equ 09Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned CM :3;
        unsigned CIS :1;
        unsigned C1INV :1;
        unsigned C2INV :1;
        unsigned C1OUT :1;
        unsigned C2OUT :1;
    };
    struct {
        unsigned CM0 :1;
        unsigned CM1 :1;
        unsigned CM2 :1;
    };
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __attribute__((address(0x09C)));
// bitfield macros
# 2155 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: CVRCON

extern volatile unsigned char CVRCON __attribute__((address(0x09D)));

__asm("CVRCON equ 09Dh");

// bitfield definitions
typedef union {
    struct {
        unsigned CVR :4;
        unsigned :1;
        unsigned CVRR :1;
        unsigned CVROE :1;
        unsigned CVREN :1;
    };
    struct {
        unsigned CVR0 :1;
        unsigned CVR1 :1;
        unsigned CVR2 :1;
        unsigned CVR3 :1;
    };
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __attribute__((address(0x09D)));
// bitfield macros
# 2220 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: ADRESL

extern volatile unsigned char ADRESL __attribute__((address(0x09E)));

__asm("ADRESL equ 09Eh");


// Register: ADCON1

extern volatile unsigned char ADCON1 __attribute__((address(0x09F)));

__asm("ADCON1 equ 09Fh");

// bitfield definitions
typedef union {
    struct {
        unsigned PCFG :4;
        unsigned :2;
        unsigned ADCS2 :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned PCFG0 :1;
        unsigned PCFG1 :1;
        unsigned PCFG2 :1;
        unsigned PCFG3 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x09F)));
// bitfield macros
# 2286 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: EEDATA

extern volatile unsigned char EEDATA __attribute__((address(0x10C)));

__asm("EEDATA equ 010Ch");


// Register: EEADR

extern volatile unsigned char EEADR __attribute__((address(0x10D)));

__asm("EEADR equ 010Dh");


// Register: EEDATH

extern volatile unsigned char EEDATH __attribute__((address(0x10E)));

__asm("EEDATH equ 010Eh");


// Register: EEADRH

extern volatile unsigned char EEADRH __attribute__((address(0x10F)));

__asm("EEADRH equ 010Fh");


// Register: EECON1

extern volatile unsigned char EECON1 __attribute__((address(0x18C)));

__asm("EECON1 equ 018Ch");

// bitfield definitions
typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned :3;
        unsigned EEPGD :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0x18C)));
// bitfield macros
# 2359 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// Register: EECON2

extern volatile unsigned char EECON2 __attribute__((address(0x18D)));

__asm("EECON2 equ 018Dh");
# 2377 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include\\proc/pic16f877a.h" 3
// SSPCON2<ACKDT>
extern volatile __bit ACKDT __attribute__((address(0x48D))); // @ (0x91 * 8 + 5)

// SSPCON2<ACKEN>
extern volatile __bit ACKEN __attribute__((address(0x48C))); // @ (0x91 * 8 + 4)

// SSPCON2<ACKSTAT>
extern volatile __bit ACKSTAT __attribute__((address(0x48E))); // @ (0x91 * 8 + 6)

// ADCON0<ADCS0>
extern volatile __bit ADCS0 __attribute__((address(0xFE))); // @ (0x1F * 8 + 6)

// ADCON0<ADCS1>
extern volatile __bit ADCS1 __attribute__((address(0xFF))); // @ (0x1F * 8 + 7)

// ADCON1<ADCS2>
extern volatile __bit ADCS2 __attribute__((address(0x4FE))); // @ (0x9F * 8 + 6)

// RCSTA<ADDEN>
extern volatile __bit ADDEN __attribute__((address(0xC3))); // @ (0x18 * 8 + 3)

// ADCON1<ADFM>
extern volatile __bit ADFM __attribute__((address(0x4FF))); // @ (0x9F * 8 + 7)

// PIE1<ADIE>
extern volatile __bit ADIE __attribute__((address(0x466))); // @ (0x8C * 8 + 6)

// PIR1<ADIF>
extern volatile __bit ADIF __attribute__((address(0x66))); // @ (0xC * 8 + 6)

// ADCON0<ADON>
extern volatile __bit ADON __attribute__((address(0xF8))); // @ (0x1F * 8 + 0)

// PIE2<BCLIE>
extern volatile __bit BCLIE __attribute__((address(0x46B))); // @ (0x8D * 8 + 3)

// PIR2<BCLIF>
extern volatile __bit BCLIF __attribute__((address(0x6B))); // @ (0xD * 8 + 3)

// SSPSTAT<BF>
extern volatile __bit BF __attribute__((address(0x4A0))); // @ (0x94 * 8 + 0)

// TXSTA<BRGH>
extern volatile __bit BRGH __attribute__((address(0x4C2))); // @ (0x98 * 8 + 2)

// CMCON<C1INV>
extern volatile __bit C1INV __attribute__((address(0x4E4))); // @ (0x9C * 8 + 4)

// CMCON<C1OUT>
extern volatile __bit C1OUT __attribute__((address(0x4E6))); // @ (0x9C * 8 + 6)

// CMCON<C2INV>
extern volatile __bit C2INV __attribute__((address(0x4E5))); // @ (0x9C * 8 + 5)

// CMCON<C2OUT>
extern volatile __bit C2OUT __attribute__((address(0x4E7))); // @ (0x9C * 8 + 7)

// STATUS<CARRY>
extern volatile __bit CARRY __attribute__((address(0x18))); // @ (0x3 * 8 + 0)

// PIE1<CCP1IE>
extern volatile __bit CCP1IE __attribute__((address(0x462))); // @ (0x8C * 8 + 2)

// PIR1<CCP1IF>
extern volatile __bit CCP1IF __attribute__((address(0x62))); // @ (0xC * 8 + 2)

// CCP1CON<CCP1M0>
extern volatile __bit CCP1M0 __attribute__((address(0xB8))); // @ (0x17 * 8 + 0)

// CCP1CON<CCP1M1>
extern volatile __bit CCP1M1 __attribute__((address(0xB9))); // @ (0x17 * 8 + 1)

// CCP1CON<CCP1M2>
extern volatile __bit CCP1M2 __attribute__((address(0xBA))); // @ (0x17 * 8 + 2)

// CCP1CON<CCP1M3>
extern volatile __bit CCP1M3 __attribute__((address(0xBB))); // @ (0x17 * 8 + 3)

// CCP1CON<CCP1X>
extern volatile __bit CCP1X __attribute__((address(0xBD))); // @ (0x17 * 8 + 5)

// CCP1CON<CCP1Y>
extern volatile __bit CCP1Y __attribute__((address(0xBC))); // @ (0x17 * 8 + 4)

// PIE2<CCP2IE>
extern volatile __bit CCP2IE __attribute__((address(0x468))); // @ (0x8D * 8 + 0)

// PIR2<CCP2IF>
extern volatile __bit CCP2IF __attribute__((address(0x68))); // @ (0xD * 8 + 0)

// CCP2CON<CCP2M0>
extern volatile __bit CCP2M0 __attribute__((address(0xE8))); // @ (0x1D * 8 + 0)

// CCP2CON<CCP2M1>
extern volatile __bit CCP2M1 __attribute__((address(0xE9))); // @ (0x1D * 8 + 1)

// CCP2CON<CCP2M2>
extern volatile __bit CCP2M2 __attribute__((address(0xEA))); // @ (0x1D * 8 + 2)

// CCP2CON<CCP2M3>
extern volatile __bit CCP2M3 __attribute__((address(0xEB))); // @ (0x1D * 8 + 3)

// CCP2CON<CCP2X>
extern volatile __bit CCP2X __attribute__((address(0xED))); // @ (0x1D * 8 + 5)

// CCP2CON<CCP2Y>
extern volatile __bit CCP2Y __attribute__((address(0xEC))); // @ (0x1D * 8 + 4)

// ADCON0<CHS0>
extern volatile __bit CHS0 __attribute__((address(0xFB))); // @ (0x1F * 8 + 3)

// ADCON0<CHS1>
extern volatile __bit CHS1 __attribute__((address(0xFC))); // @ (0x1F * 8 + 4)

// ADCON0<CHS2>
extern volatile __bit CHS2 __attribute__((address(0xFD))); // @ (0x1F * 8 + 5)

// CMCON<CIS>
extern volatile __bit CIS __attribute__((address(0x4E3))); // @ (0x9C * 8 + 3)

// SSPSTAT<CKE>
extern volatile __bit CKE __attribute__((address(0x4A6))); // @ (0x94 * 8 + 6)

// SSPCON<CKP>
extern volatile __bit CKP __attribute__((address(0xA4))); // @ (0x14 * 8 + 4)

// CMCON<CM0>
extern volatile __bit CM0 __attribute__((address(0x4E0))); // @ (0x9C * 8 + 0)

// CMCON<CM1>
extern volatile __bit CM1 __attribute__((address(0x4E1))); // @ (0x9C * 8 + 1)

// CMCON<CM2>
extern volatile __bit CM2 __attribute__((address(0x4E2))); // @ (0x9C * 8 + 2)

// PIE2<CMIE>
extern volatile __bit CMIE __attribute__((address(0x46E))); // @ (0x8D * 8 + 6)

// PIR2<CMIF>
extern volatile __bit CMIF __attribute__((address(0x6E))); // @ (0xD * 8 + 6)

// RCSTA<CREN>
extern volatile __bit CREN __attribute__((address(0xC4))); // @ (0x18 * 8 + 4)

// TXSTA<CSRC>
extern volatile __bit CSRC __attribute__((address(0x4C7))); // @ (0x98 * 8 + 7)

// CVRCON<CVR0>
extern volatile __bit CVR0 __attribute__((address(0x4E8))); // @ (0x9D * 8 + 0)

// CVRCON<CVR1>
extern volatile __bit CVR1 __attribute__((address(0x4E9))); // @ (0x9D * 8 + 1)

// CVRCON<CVR2>
extern volatile __bit CVR2 __attribute__((address(0x4EA))); // @ (0x9D * 8 + 2)

// CVRCON<CVR3>
extern volatile __bit CVR3 __attribute__((address(0x4EB))); // @ (0x9D * 8 + 3)

// CVRCON<CVREN>
extern volatile __bit CVREN __attribute__((address(0x4EF))); // @ (0x9D * 8 + 7)

// CVRCON<CVROE>
extern volatile __bit CVROE __attribute__((address(0x4EE))); // @ (0x9D * 8 + 6)

// CVRCON<CVRR>
extern volatile __bit CVRR __attribute__((address(0x4ED))); // @ (0x9D * 8 + 5)

// SSPSTAT<DATA_ADDRESS>
extern volatile __bit DATA_ADDRESS __attribute__((address(0x4A5))); // @ (0x94 * 8 + 5)

// STATUS<DC>
extern volatile __bit DC __attribute__((address(0x19))); // @ (0x3 * 8 + 1)

// SSPSTAT<D_A>
extern volatile __bit D_A __attribute__((address(0x4A5))); // @ (0x94 * 8 + 5)

// SSPSTAT<D_nA>
extern volatile __bit D_nA __attribute__((address(0x4A5))); // @ (0x94 * 8 + 5)

// PIE2<EEIE>
extern volatile __bit EEIE __attribute__((address(0x46C))); // @ (0x8D * 8 + 4)

// PIR2<EEIF>
extern volatile __bit EEIF __attribute__((address(0x6C))); // @ (0xD * 8 + 4)

// EECON1<EEPGD>
extern volatile __bit EEPGD __attribute__((address(0xC67))); // @ (0x18C * 8 + 7)

// RCSTA<FERR>
extern volatile __bit FERR __attribute__((address(0xC2))); // @ (0x18 * 8 + 2)

// SSPCON2<GCEN>
extern volatile __bit GCEN __attribute__((address(0x48F))); // @ (0x91 * 8 + 7)

// INTCON<GIE>
extern volatile __bit GIE __attribute__((address(0x5F))); // @ (0xB * 8 + 7)

// ADCON0<GO>
extern volatile __bit GO __attribute__((address(0xFA))); // @ (0x1F * 8 + 2)

// ADCON0<GO_DONE>
extern volatile __bit GO_DONE __attribute__((address(0xFA))); // @ (0x1F * 8 + 2)

// ADCON0<GO_nDONE>
extern volatile __bit GO_nDONE __attribute__((address(0xFA))); // @ (0x1F * 8 + 2)

// SSPSTAT<I2C_DATA>
extern volatile __bit I2C_DATA __attribute__((address(0x4A5))); // @ (0x94 * 8 + 5)

// SSPSTAT<I2C_READ>
extern volatile __bit I2C_READ __attribute__((address(0x4A2))); // @ (0x94 * 8 + 2)

// SSPSTAT<I2C_START>
extern volatile __bit I2C_START __attribute__((address(0x4A3))); // @ (0x94 * 8 + 3)

// SSPSTAT<I2C_STOP>
extern volatile __bit I2C_STOP __attribute__((address(0x4A4))); // @ (0x94 * 8 + 4)

// TRISE<IBF>
extern volatile __bit IBF __attribute__((address(0x44F))); // @ (0x89 * 8 + 7)

// TRISE<IBOV>
extern volatile __bit IBOV __attribute__((address(0x44D))); // @ (0x89 * 8 + 5)

// INTCON<INTE>
extern volatile __bit INTE __attribute__((address(0x5C))); // @ (0xB * 8 + 4)

// OPTION_REG<INTEDG>
extern volatile __bit INTEDG __attribute__((address(0x40E))); // @ (0x81 * 8 + 6)

// INTCON<INTF>
extern volatile __bit INTF __attribute__((address(0x59))); // @ (0xB * 8 + 1)

// STATUS<IRP>
extern volatile __bit IRP __attribute__((address(0x1F))); // @ (0x3 * 8 + 7)

// TRISE<OBF>
extern volatile __bit OBF __attribute__((address(0x44E))); // @ (0x89 * 8 + 6)

// RCSTA<OERR>
extern volatile __bit OERR __attribute__((address(0xC1))); // @ (0x18 * 8 + 1)

// ADCON1<PCFG0>
extern volatile __bit PCFG0 __attribute__((address(0x4F8))); // @ (0x9F * 8 + 0)

// ADCON1<PCFG1>
extern volatile __bit PCFG1 __attribute__((address(0x4F9))); // @ (0x9F * 8 + 1)

// ADCON1<PCFG2>
extern volatile __bit PCFG2 __attribute__((address(0x4FA))); // @ (0x9F * 8 + 2)

// ADCON1<PCFG3>
extern volatile __bit PCFG3 __attribute__((address(0x4FB))); // @ (0x9F * 8 + 3)

// INTCON<PEIE>
extern volatile __bit PEIE __attribute__((address(0x5E))); // @ (0xB * 8 + 6)

// SSPCON2<PEN>
extern volatile __bit PEN __attribute__((address(0x48A))); // @ (0x91 * 8 + 2)

// OPTION_REG<PS0>
extern volatile __bit PS0 __attribute__((address(0x408))); // @ (0x81 * 8 + 0)

// OPTION_REG<PS1>
extern volatile __bit PS1 __attribute__((address(0x409))); // @ (0x81 * 8 + 1)

// OPTION_REG<PS2>
extern volatile __bit PS2 __attribute__((address(0x40A))); // @ (0x81 * 8 + 2)

// OPTION_REG<PSA>
extern volatile __bit PSA __attribute__((address(0x40B))); // @ (0x81 * 8 + 3)

// PIE1<PSPIE>
extern volatile __bit PSPIE __attribute__((address(0x467))); // @ (0x8C * 8 + 7)

// PIR1<PSPIF>
extern volatile __bit PSPIF __attribute__((address(0x67))); // @ (0xC * 8 + 7)

// TRISE<PSPMODE>
extern volatile __bit PSPMODE __attribute__((address(0x44C))); // @ (0x89 * 8 + 4)

// PORTA<RA0>
extern volatile __bit RA0 __attribute__((address(0x28))); // @ (0x5 * 8 + 0)

// PORTA<RA1>
extern volatile __bit RA1 __attribute__((address(0x29))); // @ (0x5 * 8 + 1)

// PORTA<RA2>
extern volatile __bit RA2 __attribute__((address(0x2A))); // @ (0x5 * 8 + 2)

// PORTA<RA3>
extern volatile __bit RA3 __attribute__((address(0x2B))); // @ (0x5 * 8 + 3)

// PORTA<RA4>
extern volatile __bit RA4 __attribute__((address(0x2C))); // @ (0x5 * 8 + 4)

// PORTA<RA5>
extern volatile __bit RA5 __attribute__((address(0x2D))); // @ (0x5 * 8 + 5)

// PORTB<RB0>
extern volatile __bit RB0 __attribute__((address(0x30))); // @ (0x6 * 8 + 0)

// PORTB<RB1>
extern volatile __bit RB1 __attribute__((address(0x31))); // @ (0x6 * 8 + 1)

// PORTB<RB2>
extern volatile __bit RB2 __attribute__((address(0x32))); // @ (0x6 * 8 + 2)

// PORTB<RB3>
extern volatile __bit RB3 __attribute__((address(0x33))); // @ (0x6 * 8 + 3)

// PORTB<RB4>
extern volatile __bit RB4 __attribute__((address(0x34))); // @ (0x6 * 8 + 4)

// PORTB<RB5>
extern volatile __bit RB5 __attribute__((address(0x35))); // @ (0x6 * 8 + 5)

// PORTB<RB6>
extern volatile __bit RB6 __attribute__((address(0x36))); // @ (0x6 * 8 + 6)

// PORTB<RB7>
extern volatile __bit RB7 __attribute__((address(0x37))); // @ (0x6 * 8 + 7)

// INTCON<RBIE>
extern volatile __bit RBIE __attribute__((address(0x5B))); // @ (0xB * 8 + 3)

// INTCON<RBIF>
extern volatile __bit RBIF __attribute__((address(0x58))); // @ (0xB * 8 + 0)

// PORTC<RC0>
extern volatile __bit RC0 __attribute__((address(0x38))); // @ (0x7 * 8 + 0)

// PORTC<RC1>
extern volatile __bit RC1 __attribute__((address(0x39))); // @ (0x7 * 8 + 1)

// PORTC<RC2>
extern volatile __bit RC2 __attribute__((address(0x3A))); // @ (0x7 * 8 + 2)

// PORTC<RC3>
extern volatile __bit RC3 __attribute__((address(0x3B))); // @ (0x7 * 8 + 3)

// PORTC<RC4>
extern volatile __bit RC4 __attribute__((address(0x3C))); // @ (0x7 * 8 + 4)

// PORTC<RC5>
extern volatile __bit RC5 __attribute__((address(0x3D))); // @ (0x7 * 8 + 5)

// PORTC<RC6>
extern volatile __bit RC6 __attribute__((address(0x3E))); // @ (0x7 * 8 + 6)

// PORTC<RC7>
extern volatile __bit RC7 __attribute__((address(0x3F))); // @ (0x7 * 8 + 7)

// RCSTA<RC8_9>
extern volatile __bit RC8_9 __attribute__((address(0xC6))); // @ (0x18 * 8 + 6)

// RCSTA<RC9>
extern volatile __bit RC9 __attribute__((address(0xC6))); // @ (0x18 * 8 + 6)

// RCSTA<RCD8>
extern volatile __bit RCD8 __attribute__((address(0xC0))); // @ (0x18 * 8 + 0)

// SSPCON2<RCEN>
extern volatile __bit RCEN __attribute__((address(0x48B))); // @ (0x91 * 8 + 3)

// PIE1<RCIE>
extern volatile __bit RCIE __attribute__((address(0x465))); // @ (0x8C * 8 + 5)

// PIR1<RCIF>
extern volatile __bit RCIF __attribute__((address(0x65))); // @ (0xC * 8 + 5)

// EECON1<RD>
extern volatile __bit RD __attribute__((address(0xC60))); // @ (0x18C * 8 + 0)

// PORTD<RD0>
extern volatile __bit RD0 __attribute__((address(0x40))); // @ (0x8 * 8 + 0)

// PORTD<RD1>
extern volatile __bit RD1 __attribute__((address(0x41))); // @ (0x8 * 8 + 1)

// PORTD<RD2>
extern volatile __bit RD2 __attribute__((address(0x42))); // @ (0x8 * 8 + 2)

// PORTD<RD3>
extern volatile __bit RD3 __attribute__((address(0x43))); // @ (0x8 * 8 + 3)

// PORTD<RD4>
extern volatile __bit RD4 __attribute__((address(0x44))); // @ (0x8 * 8 + 4)

// PORTD<RD5>
extern volatile __bit RD5 __attribute__((address(0x45))); // @ (0x8 * 8 + 5)

// PORTD<RD6>
extern volatile __bit RD6 __attribute__((address(0x46))); // @ (0x8 * 8 + 6)

// PORTD<RD7>
extern volatile __bit RD7 __attribute__((address(0x47))); // @ (0x8 * 8 + 7)

// PORTE<RE0>
extern volatile __bit RE0 __attribute__((address(0x48))); // @ (0x9 * 8 + 0)

// PORTE<RE1>
extern volatile __bit RE1 __attribute__((address(0x49))); // @ (0x9 * 8 + 1)

// PORTE<RE2>
extern volatile __bit RE2 __attribute__((address(0x4A))); // @ (0x9 * 8 + 2)

// SSPSTAT<READ_WRITE>
extern volatile __bit READ_WRITE __attribute__((address(0x4A2))); // @ (0x94 * 8 + 2)

// STATUS<RP0>
extern volatile __bit RP0 __attribute__((address(0x1D))); // @ (0x3 * 8 + 5)

// STATUS<RP1>
extern volatile __bit RP1 __attribute__((address(0x1E))); // @ (0x3 * 8 + 6)

// SSPCON2<RSEN>
extern volatile __bit RSEN __attribute__((address(0x489))); // @ (0x91 * 8 + 1)

// RCSTA<RX9>
extern volatile __bit RX9 __attribute__((address(0xC6))); // @ (0x18 * 8 + 6)

// RCSTA<RX9D>
extern volatile __bit RX9D __attribute__((address(0xC0))); // @ (0x18 * 8 + 0)

// SSPSTAT<R_W>
extern volatile __bit R_W __attribute__((address(0x4A2))); // @ (0x94 * 8 + 2)

// SSPSTAT<R_nW>
extern volatile __bit R_nW __attribute__((address(0x4A2))); // @ (0x94 * 8 + 2)

// SSPCON2<SEN>
extern volatile __bit SEN __attribute__((address(0x488))); // @ (0x91 * 8 + 0)

// SSPSTAT<SMP>
extern volatile __bit SMP __attribute__((address(0x4A7))); // @ (0x94 * 8 + 7)

// RCSTA<SPEN>
extern volatile __bit SPEN __attribute__((address(0xC7))); // @ (0x18 * 8 + 7)

// RCSTA<SREN>
extern volatile __bit SREN __attribute__((address(0xC5))); // @ (0x18 * 8 + 5)

// SSPCON<SSPEN>
extern volatile __bit SSPEN __attribute__((address(0xA5))); // @ (0x14 * 8 + 5)

// PIE1<SSPIE>
extern volatile __bit SSPIE __attribute__((address(0x463))); // @ (0x8C * 8 + 3)

// PIR1<SSPIF>
extern volatile __bit SSPIF __attribute__((address(0x63))); // @ (0xC * 8 + 3)

// SSPCON<SSPM0>
extern volatile __bit SSPM0 __attribute__((address(0xA0))); // @ (0x14 * 8 + 0)

// SSPCON<SSPM1>
extern volatile __bit SSPM1 __attribute__((address(0xA1))); // @ (0x14 * 8 + 1)

// SSPCON<SSPM2>
extern volatile __bit SSPM2 __attribute__((address(0xA2))); // @ (0x14 * 8 + 2)

// SSPCON<SSPM3>
extern volatile __bit SSPM3 __attribute__((address(0xA3))); // @ (0x14 * 8 + 3)

// SSPCON<SSPOV>
extern volatile __bit SSPOV __attribute__((address(0xA6))); // @ (0x14 * 8 + 6)

// TXSTA<SYNC>
extern volatile __bit SYNC __attribute__((address(0x4C4))); // @ (0x98 * 8 + 4)

// OPTION_REG<T0CS>
extern volatile __bit T0CS __attribute__((address(0x40D))); // @ (0x81 * 8 + 5)

// INTCON<T0IE>
extern volatile __bit T0IE __attribute__((address(0x5D))); // @ (0xB * 8 + 5)

// INTCON<T0IF>
extern volatile __bit T0IF __attribute__((address(0x5A))); // @ (0xB * 8 + 2)

// OPTION_REG<T0SE>
extern volatile __bit T0SE __attribute__((address(0x40C))); // @ (0x81 * 8 + 4)

// T1CON<T1CKPS0>
extern volatile __bit T1CKPS0 __attribute__((address(0x84))); // @ (0x10 * 8 + 4)

// T1CON<T1CKPS1>
extern volatile __bit T1CKPS1 __attribute__((address(0x85))); // @ (0x10 * 8 + 5)

// T1CON<T1INSYNC>
extern volatile __bit T1INSYNC __attribute__((address(0x82))); // @ (0x10 * 8 + 2)

// T1CON<T1OSCEN>
extern volatile __bit T1OSCEN __attribute__((address(0x83))); // @ (0x10 * 8 + 3)

// T1CON<T1SYNC>
extern volatile __bit T1SYNC __attribute__((address(0x82))); // @ (0x10 * 8 + 2)

// T2CON<T2CKPS0>
extern volatile __bit T2CKPS0 __attribute__((address(0x90))); // @ (0x12 * 8 + 0)

// T2CON<T2CKPS1>
extern volatile __bit T2CKPS1 __attribute__((address(0x91))); // @ (0x12 * 8 + 1)

// INTCON<TMR0IE>
extern volatile __bit TMR0IE __attribute__((address(0x5D))); // @ (0xB * 8 + 5)

// INTCON<TMR0IF>
extern volatile __bit TMR0IF __attribute__((address(0x5A))); // @ (0xB * 8 + 2)

// T1CON<TMR1CS>
extern volatile __bit TMR1CS __attribute__((address(0x81))); // @ (0x10 * 8 + 1)

// PIE1<TMR1IE>
extern volatile __bit TMR1IE __attribute__((address(0x460))); // @ (0x8C * 8 + 0)

// PIR1<TMR1IF>
extern volatile __bit TMR1IF __attribute__((address(0x60))); // @ (0xC * 8 + 0)

// T1CON<TMR1ON>
extern volatile __bit TMR1ON __attribute__((address(0x80))); // @ (0x10 * 8 + 0)

// PIE1<TMR2IE>
extern volatile __bit TMR2IE __attribute__((address(0x461))); // @ (0x8C * 8 + 1)

// PIR1<TMR2IF>
extern volatile __bit TMR2IF __attribute__((address(0x61))); // @ (0xC * 8 + 1)

// T2CON<TMR2ON>
extern volatile __bit TMR2ON __attribute__((address(0x92))); // @ (0x12 * 8 + 2)

// T2CON<TOUTPS0>
extern volatile __bit TOUTPS0 __attribute__((address(0x93))); // @ (0x12 * 8 + 3)

// T2CON<TOUTPS1>
extern volatile __bit TOUTPS1 __attribute__((address(0x94))); // @ (0x12 * 8 + 4)

// T2CON<TOUTPS2>
extern volatile __bit TOUTPS2 __attribute__((address(0x95))); // @ (0x12 * 8 + 5)

// T2CON<TOUTPS3>
extern volatile __bit TOUTPS3 __attribute__((address(0x96))); // @ (0x12 * 8 + 6)

// TRISA<TRISA0>
extern volatile __bit TRISA0 __attribute__((address(0x428))); // @ (0x85 * 8 + 0)

// TRISA<TRISA1>
extern volatile __bit TRISA1 __attribute__((address(0x429))); // @ (0x85 * 8 + 1)

// TRISA<TRISA2>
extern volatile __bit TRISA2 __attribute__((address(0x42A))); // @ (0x85 * 8 + 2)

// TRISA<TRISA3>
extern volatile __bit TRISA3 __attribute__((address(0x42B))); // @ (0x85 * 8 + 3)

// TRISA<TRISA4>
extern volatile __bit TRISA4 __attribute__((address(0x42C))); // @ (0x85 * 8 + 4)

// TRISA<TRISA5>
extern volatile __bit TRISA5 __attribute__((address(0x42D))); // @ (0x85 * 8 + 5)

// TRISB<TRISB0>
extern volatile __bit TRISB0 __attribute__((address(0x430))); // @ (0x86 * 8 + 0)

// TRISB<TRISB1>
extern volatile __bit TRISB1 __attribute__((address(0x431))); // @ (0x86 * 8 + 1)

// TRISB<TRISB2>
extern volatile __bit TRISB2 __attribute__((address(0x432))); // @ (0x86 * 8 + 2)

// TRISB<TRISB3>
extern volatile __bit TRISB3 __attribute__((address(0x433))); // @ (0x86 * 8 + 3)

// TRISB<TRISB4>
extern volatile __bit TRISB4 __attribute__((address(0x434))); // @ (0x86 * 8 + 4)

// TRISB<TRISB5>
extern volatile __bit TRISB5 __attribute__((address(0x435))); // @ (0x86 * 8 + 5)

// TRISB<TRISB6>
extern volatile __bit TRISB6 __attribute__((address(0x436))); // @ (0x86 * 8 + 6)

// TRISB<TRISB7>
extern volatile __bit TRISB7 __attribute__((address(0x437))); // @ (0x86 * 8 + 7)

// TRISC<TRISC0>
extern volatile __bit TRISC0 __attribute__((address(0x438))); // @ (0x87 * 8 + 0)

// TRISC<TRISC1>
extern volatile __bit TRISC1 __attribute__((address(0x439))); // @ (0x87 * 8 + 1)

// TRISC<TRISC2>
extern volatile __bit TRISC2 __attribute__((address(0x43A))); // @ (0x87 * 8 + 2)

// TRISC<TRISC3>
extern volatile __bit TRISC3 __attribute__((address(0x43B))); // @ (0x87 * 8 + 3)

// TRISC<TRISC4>
extern volatile __bit TRISC4 __attribute__((address(0x43C))); // @ (0x87 * 8 + 4)

// TRISC<TRISC5>
extern volatile __bit TRISC5 __attribute__((address(0x43D))); // @ (0x87 * 8 + 5)

// TRISC<TRISC6>
extern volatile __bit TRISC6 __attribute__((address(0x43E))); // @ (0x87 * 8 + 6)

// TRISC<TRISC7>
extern volatile __bit TRISC7 __attribute__((address(0x43F))); // @ (0x87 * 8 + 7)

// TRISD<TRISD0>
extern volatile __bit TRISD0 __attribute__((address(0x440))); // @ (0x88 * 8 + 0)

// TRISD<TRISD1>
extern volatile __bit TRISD1 __attribute__((address(0x441))); // @ (0x88 * 8 + 1)

// TRISD<TRISD2>
extern volatile __bit TRISD2 __attribute__((address(0x442))); // @ (0x88 * 8 + 2)

// TRISD<TRISD3>
extern volatile __bit TRISD3 __attribute__((address(0x443))); // @ (0x88 * 8 + 3)

// TRISD<TRISD4>
extern volatile __bit TRISD4 __attribute__((address(0x444))); // @ (0x88 * 8 + 4)

// TRISD<TRISD5>
extern volatile __bit TRISD5 __attribute__((address(0x445))); // @ (0x88 * 8 + 5)

// TRISD<TRISD6>
extern volatile __bit TRISD6 __attribute__((address(0x446))); // @ (0x88 * 8 + 6)

// TRISD<TRISD7>
extern volatile __bit TRISD7 __attribute__((address(0x447))); // @ (0x88 * 8 + 7)

// TRISE<TRISE0>
extern volatile __bit TRISE0 __attribute__((address(0x448))); // @ (0x89 * 8 + 0)

// TRISE<TRISE1>
extern volatile __bit TRISE1 __attribute__((address(0x449))); // @ (0x89 * 8 + 1)

// TRISE<TRISE2>
extern volatile __bit TRISE2 __attribute__((address(0x44A))); // @ (0x89 * 8 + 2)

// TXSTA<TRMT>
extern volatile __bit TRMT __attribute__((address(0x4C1))); // @ (0x98 * 8 + 1)

// TXSTA<TX8_9>
extern volatile __bit TX8_9 __attribute__((address(0x4C6))); // @ (0x98 * 8 + 6)

// TXSTA<TX9>
extern volatile __bit TX9 __attribute__((address(0x4C6))); // @ (0x98 * 8 + 6)

// TXSTA<TX9D>
extern volatile __bit TX9D __attribute__((address(0x4C0))); // @ (0x98 * 8 + 0)

// TXSTA<TXD8>
extern volatile __bit TXD8 __attribute__((address(0x4C0))); // @ (0x98 * 8 + 0)

// TXSTA<TXEN>
extern volatile __bit TXEN __attribute__((address(0x4C5))); // @ (0x98 * 8 + 5)

// PIE1<TXIE>
extern volatile __bit TXIE __attribute__((address(0x464))); // @ (0x8C * 8 + 4)

// PIR1<TXIF>
extern volatile __bit TXIF __attribute__((address(0x64))); // @ (0xC * 8 + 4)

// SSPSTAT<UA>
extern volatile __bit UA __attribute__((address(0x4A1))); // @ (0x94 * 8 + 1)

// SSPCON<WCOL>
extern volatile __bit WCOL __attribute__((address(0xA7))); // @ (0x14 * 8 + 7)

// EECON1<WR>
extern volatile __bit WR __attribute__((address(0xC61))); // @ (0x18C * 8 + 1)

// EECON1<WREN>
extern volatile __bit WREN __attribute__((address(0xC62))); // @ (0x18C * 8 + 2)

// EECON1<WRERR>
extern volatile __bit WRERR __attribute__((address(0xC63))); // @ (0x18C * 8 + 3)

// STATUS<ZERO>
extern volatile __bit ZERO __attribute__((address(0x1A))); // @ (0x3 * 8 + 2)

// SSPSTAT<nA>
extern volatile __bit nA __attribute__((address(0x4A5))); // @ (0x94 * 8 + 5)

// SSPSTAT<nADDRESS>
extern volatile __bit nADDRESS __attribute__((address(0x4A5))); // @ (0x94 * 8 + 5)

// PCON<nBO>
extern volatile __bit nBO __attribute__((address(0x470))); // @ (0x8E * 8 + 0)

// PCON<nBOR>
extern volatile __bit nBOR __attribute__((address(0x470))); // @ (0x8E * 8 + 0)

// ADCON0<nDONE>
extern volatile __bit nDONE __attribute__((address(0xFA))); // @ (0x1F * 8 + 2)

// STATUS<nPD>
extern volatile __bit nPD __attribute__((address(0x1B))); // @ (0x3 * 8 + 3)

// PCON<nPOR>
extern volatile __bit nPOR __attribute__((address(0x471))); // @ (0x8E * 8 + 1)

// OPTION_REG<nRBPU>
extern volatile __bit nRBPU __attribute__((address(0x40F))); // @ (0x81 * 8 + 7)

// RCSTA<nRC8>
extern volatile __bit nRC8 __attribute__((address(0xC6))); // @ (0x18 * 8 + 6)

// T1CON<nT1SYNC>
extern volatile __bit nT1SYNC __attribute__((address(0x82))); // @ (0x10 * 8 + 2)

// STATUS<nTO>
extern volatile __bit nTO __attribute__((address(0x1C))); // @ (0x3 * 8 + 4)

// TXSTA<nTX8>
extern volatile __bit nTX8 __attribute__((address(0x4C6))); // @ (0x98 * 8 + 6)

// SSPSTAT<nW>
extern volatile __bit nW __attribute__((address(0x4A2))); // @ (0x94 * 8 + 2)

// SSPSTAT<nWRITE>
extern volatile __bit nWRITE __attribute__((address(0x4A2))); // @ (0x94 * 8 + 2)
# 664 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include/pic_chip_select.h" 2 3
# 14 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include/pic.h" 2 3
# 38 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include/pic.h" 3
//
// Legacy Programming Macro Functions
//
# 50 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include/pic.h" 3
// Programs the lower 4 bits per ID location


// Variant of IDLOC for those devices that permit programming of the lower 7 bits per ID location
# 74 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include/pic.h" 3
// Flash memory read/write/erase macros are no longer supported.

__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);


# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/eeprom_routines.h" 1 3
// This header file should not be included directly
// Inclusion of this file is provided indirectly by including htc.h
# 98 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/eeprom_routines.h" 3
//
// General Macro Functions
//
# 114 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/eeprom_routines.h" 3
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
# 84 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include/pic.h" 2 3
# 118 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\\pic\\include/pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 29 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3
# 2 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\sources\\c99\\pic\\__eeprom.c" 2



void
__eecpymem(volatile unsigned char *to, __eeprom unsigned char * from, unsigned char size)
{
 volatile unsigned char *cp = to;

 while (EECON1bits.WR) continue;
 EEADR = (unsigned char)from;
 while(size--) {
  while (EECON1bits.WR) continue;

  EECON1 &= 0x7F;

  EECON1bits.RD = 1;
  *cp++ = EEDATA;
  ++EEADR;
 }
# 36 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\sources\\c99\\pic\\__eeprom.c"
}

void
__memcpyee(__eeprom unsigned char * to, const unsigned char *from, unsigned char size)
{
 const unsigned char *ptr =from;

 while (EECON1bits.WR) continue;
 EEADR = (unsigned char)to - 1U;

 EECON1 &= 0x7F;

 while(size--) {
  while (EECON1bits.WR) {
   continue;
  }
  EEDATA = *ptr++;
  ++EEADR;
  STATUSbits.CARRY = 0;
  if (INTCONbits.GIE) {
   STATUSbits.CARRY = 1;
  }
  INTCONbits.GIE = 0;
  EECON1bits.WREN = 1;
  EECON2 = 0x55;
  EECON2 = 0xAA;
  EECON1bits.WR = 1;
  EECON1bits.WREN = 0;
  if (STATUSbits.CARRY) {
   INTCONbits.GIE = 1; //an opportunity for interrupts to happen
  }
 }
# 101 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\sources\\c99\\pic\\__eeprom.c"
}

unsigned char
__eetoc(__eeprom void *addr)
{
 unsigned char data;
 __eecpymem((unsigned char *) &data,addr,1);
 return data;
}

unsigned int
__eetoi(__eeprom void *addr)
{
 unsigned int data;
 __eecpymem((unsigned char *) &data,addr,2);
 return data;
}

#pragma warning push
#pragma warning disable 2040
__uint24
__eetom(__eeprom void *addr)
{
 __uint24 data;
 __eecpymem((unsigned char *) &data,addr,3);
 return data;
}
#pragma warning pop

unsigned long
__eetol(__eeprom void *addr)
{
 unsigned long data;
 __eecpymem((unsigned char *) &data,addr,4);
 return data;
}

#pragma warning push
#pragma warning disable 1516
unsigned long long
__eetoo(__eeprom void *addr)
{
 unsigned long long data;
 __eecpymem((unsigned char *) &data,addr,8);
 return data;
}
#pragma warning pop

unsigned char
__ctoee(__eeprom void *addr, unsigned char data)
{
 __memcpyee(addr,(unsigned char *) &data,1);
 return data;
}

unsigned int
__itoee(__eeprom void *addr, unsigned int data)
{
 __memcpyee(addr,(unsigned char *) &data,2);
 return data;
}

#pragma warning push
#pragma warning disable 2040
__uint24
__mtoee(__eeprom void *addr, __uint24 data)
{
 __memcpyee(addr,(unsigned char *) &data,3);
 return data;
}
#pragma warning pop

unsigned long
__ltoee(__eeprom void *addr, unsigned long data)
{
 __memcpyee(addr,(unsigned char *) &data,4);
 return data;
}

#pragma warning push
#pragma warning disable 1516
unsigned long long
__otoee(__eeprom void *addr, unsigned long long data)
{
 __memcpyee(addr,(unsigned char *) &data,8);
 return data;
}
#pragma warning pop

float
__eetoft(__eeprom void *addr)
{
 float data;
 __eecpymem((unsigned char *) &data,addr,3);
 return data;
}

double
__eetofl(__eeprom void *addr)
{
 double data;
 __eecpymem((unsigned char *) &data,addr,4);
 return data;
}

float
__fttoee(__eeprom void *addr, float data)
{
 __memcpyee(addr,(unsigned char *) &data,3);
 return data;
}

double
__fltoee(__eeprom void *addr, double data)
{
 __memcpyee(addr,(unsigned char *) &data,4);
 return data;
}
