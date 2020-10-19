/*
 * File:   main.c
 * Author: Zedy
 *
 * Created on June 30, 2016, 7:10 PM
 */


// PIC10F202 Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config WDTE = OFF       // Watchdog Timer (WDT disabled)
#pragma config CP = OFF         // Code Protect (Code protection off)
#pragma config MCLRE = OFF      // Master Clear Enable (GP3/MCLR pin fuction is digital I/O, MCLR internally tied to VDD)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
//Sensor pinout:
//                |-    Vcc
//                |-    TRig 10uS pulse min, each 60 ms
//                |-    Echo range = high level time*340/2
//                |-    GND

//              PIC10F202 pinout:p
//                          ..._...
//                      N/C-|     |-GP3/MCLR#/VPP
//                      VDD-|     |-VSS ---|:.
//(Serv1)  GP2/T0CKI/FOSC4-|     |-N/C
//(Echo)        GP1/ICSPCLK-|.....|-GP0/ICSPDAT/(Serv2)

//Pickit2 pinout:

//    >Vpp        ->     MCLR
//    Vdd         ->    Vdd 
//    Vss ----|
//    DAT               
//    CLK
//    Aux

#define Serv1    GP2 //output
#define Fan    GP1 //input  
#define Serv2     GP0 // Serv2 output
#define right   0x0A
#define left    0x02
#define middle  0x04

#define _XTAL_FREQ  4000000

void init (void){
   //*** Initialization
    // configure port
    TRIS = 0b00001000;                // Set all pins as outputs
    Serv1 = 0;
    Serv2 = 0;
    Fan = 0;
    OPTION = 0b11000111; // enable pull-ups 
    //3 1-WDT/0-Timer0
    //0:2 Prescaler = 256 
}
/*
 inline int combine(int x, int y) { return 2*x-y;
}*/
void move (unsigned char d, unsigned char x){
    unsigned char i;
    i = 0;
    while(i < 100){
           if (TMR0 == 0x00){
               if (x == 1)
               Serv1 = 1;
               else
               Serv2 =1;
              //  TMR0 = 0;
              //      __delay_us(10);
              //      __delay_us(10);
            }
            if (TMR0 == d){
                if (x == 1)
                Serv1 = 0;
                else Serv2 = 0;
            }
            if(TMR0 == 0x4C){
                TMR0 = 0;
                i=i++;
            }
    }
        
}
/*
void dimm_off (void){
    unsigned char lit;
    unsigned char done = 0;
             for (lit = 1; lit < 255; lit++){//sort
                 Serv2 = 0;
                 while( 255 != done) {
                         __delay_us(10);
                         done = done++;
                 }
                 Serv2 = 1;
                 done = 0;
                 while(lit != done) {
                         __delay_us(10);
                         done = done++;
                 }
             }
}

void dimm_on (void){
    unsigned char lit;
    unsigned char done = 0;
             for (lit = 1; lit < 255; lit++){//sort
                 Serv2 = 1;
                 while( 255 != done) {
                         __delay_us(10);
                         done = done++;
                 }
                 Serv2 = 0;
                 done = 0;
                 while(lit != done) {
                         __delay_us(10);
                         done = done++;
                 }
             }
}
void blink (void){
            Serv2 = 1;
            __delay_ms(100);
            Serv2 = 0;
}
void sonar (void){
    unsigned char l;
    while(1){   //forever loop

         //   if (!TMR0){
        // all the way to the right
           if (TMR0 == 0x00){
                Serv1 = 1;
              //  TMR0 = 0;
              //      __delay_us(10);
              //      __delay_us(10);
            }
            if (TMR0 == 0x08){
                Serv1 = 0;
            }
            if(TMR0 == 0x4E){
                TMR0 = 0;
            }
        */
            /*if(Echo){
                TMR0 = 0; // one tic is 256us
                           //range = high level time*340/2
                           //0-1 meter good
                           //one tic 4 cm
                while (Echo) l = TMR0;
                if (l <= 10){
                    //blink();
                    dimm_off();
                    dimm_on();
                    l = 254;
                }
                TMR0 = 1;
            }
    }
}
*/
void main(void) {
    init();
    while (1){
        unsigned char i;
        move (left,1);
        move(left,2);
        move (middle,2);
        move(right,1);
       unsigned int y;
    y = 0;
    TMR0 = 0;
    while(y < 150){   
        Fan = 1;

           if(TMR0 == 0x5f){
                TMR0 = 0;
                y=y++;
            }
    }
        Fan = 0;
        
        
    }
    return;
}


/*Working backup:
 void right (void){
    unsigned char i;
    i = 0;
    while(i < 250){
           if (TMR0 == 0x00){
                Serv1 = 1;
              //  TMR0 = 0;
              //      __delay_us(10);
              //      __delay_us(10);
            }
            if (TMR0 == 0x0A){
                Serv1 = 0;
            }
            if(TMR0 == 0x4C){
                TMR0 = 0;
                i=i++;
            }
    }
        
}

void left (void){
    unsigned char i;
    i = 0;
    while(i < 250){
           if (TMR0 == 0x00){
                Serv1 = 1;
              //  TMR0 = 0;
              //      __delay_us(10);
              //      __delay_us(10);
            }
            if (TMR0 == 0x02){
                Serv1 = 0;
            }
            if(TMR0 == 0x4C){
                TMR0 = 0;
                i=i++;
            }
    }
        
}

void middle (void){
    unsigned char i;
    i = 0;
    while(i < 250){
           if (TMR0 == 0x00){
                Serv1 = 1;
              //  TMR0 = 0;
              //      __delay_us(10);
              //      __delay_us(10);
            }
            if (TMR0 == 0x06){
                Serv1 = 0;
            }
            if(TMR0 == 0x4C){
                TMR0 = 0;
                i=i++;
            }
    }
        
}
 
 */