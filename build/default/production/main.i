# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2
# 14 "main.c"
#pragma config WDTE = OFF
#pragma config CP = OFF
#pragma config MCLRE = OFF





# 1 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/xc.h" 1 3
# 18 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "/Applications/microchip/xc8/v2.30/pic/include/c90/xc8debug.h" 1 3
# 13 "/Applications/microchip/xc8/v2.30/pic/include/c90/xc8debug.h" 3
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/xc.h" 2 3



# 1 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 1 3




# 1 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/htc.h" 1 3



# 1 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/xc.h" 1 3
# 5 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/htc.h" 2 3
# 6 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 2 3







# 1 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic_chip_select.h" 1 3
# 53 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic_chip_select.h" 3
# 1 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic10f202.h" 1 3
# 44 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic10f202.h" 3
# 1 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/__at.h" 1 3
# 45 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic10f202.h" 2 3







extern volatile unsigned char INDF __attribute__((address(0x000)));

__asm("INDF equ 00h");


typedef union {
    struct {
        unsigned INDF :8;
    };
} INDFbits_t;
extern volatile INDFbits_t INDFbits __attribute__((address(0x000)));
# 72 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic10f202.h" 3
extern volatile unsigned char TMR0 __attribute__((address(0x001)));

__asm("TMR0 equ 01h");


typedef union {
    struct {
        unsigned TMR0 :8;
    };
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __attribute__((address(0x001)));
# 92 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic10f202.h" 3
extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");


typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0x002)));
# 112 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic10f202.h" 3
extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned :2;
        unsigned GPWUF :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 178 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic10f202.h" 3
extern volatile unsigned char FSR __attribute__((address(0x004)));

__asm("FSR equ 04h");


typedef union {
    struct {
        unsigned FSR :8;
    };
} FSRbits_t;
extern volatile FSRbits_t FSRbits __attribute__((address(0x004)));
# 198 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic10f202.h" 3
extern volatile unsigned char OSCCAL __attribute__((address(0x005)));

__asm("OSCCAL equ 05h");


typedef union {
    struct {
        unsigned FOSC4 :1;
        unsigned CAL :7;
    };
    struct {
        unsigned :1;
        unsigned CAL0 :1;
        unsigned CAL1 :1;
        unsigned CAL2 :1;
        unsigned CAL3 :1;
        unsigned CAL4 :1;
        unsigned CAL5 :1;
        unsigned CAL6 :1;
    };
} OSCCALbits_t;
extern volatile OSCCALbits_t OSCCALbits __attribute__((address(0x005)));
# 269 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic10f202.h" 3
extern volatile unsigned char GPIO __attribute__((address(0x006)));

__asm("GPIO equ 06h");


typedef union {
    struct {
        unsigned GP0 :1;
        unsigned GP1 :1;
        unsigned GP2 :1;
        unsigned GP3 :1;
    };
} GPIObits_t;
extern volatile GPIObits_t GPIObits __attribute__((address(0x006)));
# 307 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic10f202.h" 3
extern volatile __control unsigned char OPTION __attribute__((address(0x000)));



extern volatile __control unsigned char TRIS __attribute__((address(0x006)));



extern volatile __control unsigned char TRISGPIO __attribute__((address(0x006)));
# 338 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic10f202.h" 3
extern volatile __bit CAL0 __attribute__((address(0x29)));


extern volatile __bit CAL1 __attribute__((address(0x2A)));


extern volatile __bit CAL2 __attribute__((address(0x2B)));


extern volatile __bit CAL3 __attribute__((address(0x2C)));


extern volatile __bit CAL4 __attribute__((address(0x2D)));


extern volatile __bit CAL5 __attribute__((address(0x2E)));


extern volatile __bit CAL6 __attribute__((address(0x2F)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit FOSC4 __attribute__((address(0x28)));


extern volatile __bit GP0 __attribute__((address(0x30)));


extern volatile __bit GP1 __attribute__((address(0x31)));


extern volatile __bit GP2 __attribute__((address(0x32)));


extern volatile __bit GP3 __attribute__((address(0x33)));


extern volatile __bit GPWUF __attribute__((address(0x1F)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nTO __attribute__((address(0x1C)));
# 54 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic_chip_select.h" 2 3
# 14 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 2 3
# 30 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 3
#pragma intrinsic(__nop)
extern void __nop(void);
# 78 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/eeprom_routines.h" 1 3
# 86 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 2 3





#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(unsigned long);
# 137 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 28 "/Applications/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/xc.h" 2 3
# 21 "main.c" 2
# 53 "main.c"
void init (void){


    TRIS = 0b00001000;
    GP2 = 0;
    GP0 = 0;
    GP1 = 0;
    OPTION = 0b11000111;


}



void move (unsigned char d, unsigned char x){
    unsigned char i;
    i = 0;
    while(i < 100){
           if (TMR0 == 0x00){
               if (x == 1)
               GP2 = 1;
               else
               GP0 =1;



            }
            if (TMR0 == d){
                if (x == 1)
                GP2 = 0;
                else GP0 = 0;
            }
            if(TMR0 == 0x4C){
                TMR0 = 0;
                i=i++;
            }
    }

}
# 169 "main.c"
void main(void) {
    init();
    while (1){
        unsigned char i;
        move (0x02,1);
        move(0x02,2);
        move (0x04,2);
        move(0x0A,1);
       unsigned int y;
    y = 0;
    TMR0 = 0;
    while(y < 150){
        GP1 = 1;

           if(TMR0 == 0x5f){
                TMR0 = 0;
                y=y++;
            }
    }
        GP1 = 0;


    }
    return;
}
