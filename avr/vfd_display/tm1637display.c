
#include "tm1637display.h"
// #include "inc/LPC11xx.h"

#define TRUE  1
#define FALSE 0
#define TM1637_I2C_COMM1    0x40
#define TM1637_I2C_COMM2    0xC0
#define TM1637_I2C_COMM3    0x80

#define TM_DIO		(1 << PB1)
#define TM_CLK		(1 << PB2)

extern volatile int bitDelayCounter;

//
//      A
//     ---
//  F |   | B
//     -G-
//  E |   | C
//     ---
//      D
const unsigned int digitToSegment[] = {
 // XGFEDCBA
  0b00111111,    // 0
  0b00000110,    // 1
  0b01011011,    // 2
  0b01001111,    // 3
  0b01100110,    // 4
  0b01101101,    // 5
  0b01111101,    // 6
  0b00000111,    // 7
  0b01111111,    // 8
  0b01101111,    // 9
  0b01110111,    // A
  0b01111100,    // B
  0b00111001,    // C
  0b01000111,    // D
  0b01111001,    // E
  0b01110001     // F
  };


void TM1637setUp()
{
  
  ///LPC_GPIO0->DIR              &= ~TM_CLK;     //set pin direction to input (sec 12.3.2)
  DDRB              &= ~TM_DIO;     //set pin direction to input (sec 12.3.2)
	DDRB              &= ~TM_CLK;
	// Set the pin direction and default value.
	// Both pins are set as inputs, allowing the pull-up resistors to pull them up
	PORTB |= TM_CLK;
	PORTB |= TM_CLK;
	//LPC_GPIO0->DIR |= TM_DIO;  //pinMode(m_pinDIO, INPUT);
   LPC_GPIO0->DATA &= ~TM_CLK;
   LPC_GPIO0->DATA &= ~TM_DIO;
   
}

void setBrightness(unsigned int brightness)
{
    if(brightness > 255)
      m_brightness = 255;
    else
      m_brightness = brightness;
}


void setSegments(unsigned int segments[], unsigned int length, unsigned int pos)
{
  unsigned int k=0;
    // Write COMM1
	start();
	writeByte(TM1637_I2C_COMM1);
	stop();
	
	// Write COMM2 + first digit address
	start();
	writeByte(TM1637_I2C_COMM2 + (pos & 0x03));
	
	// Write the data bytes
	for (k=0; k < length; k++) 
	  writeByte(segments[k]);
	  
	stop();

	// Write COMM3 + brightness
	start();
	writeByte(TM1637_I2C_COMM3 + (m_brightness & 0x0f));
	stop();
}

void showNumberDec(int num, unsigned int leading_zero, unsigned int length, unsigned int pos)
{
	unsigned int digits[4];
	static int divisors[] = { 1, 10, 100, 1000 };
	unsigned int leading = TRUE;
	int k = 0; 
	
	for(k = 0; k < 4; k++) {
	    int divisor = divisors[4 - 1 - k];
		int d = num / divisor;
		
		if (d == 0) {
		  if (leading_zero || !leading || (k == 3))
		    digits[k] = encodeDigit(d);
	      else
		    digits[k] = 0;
		}
		else {
			digits[k] = encodeDigit(d);
			num -= d * divisor;
			leading = FALSE;
		}
	}
	
	setSegments(digits + (4 - length), length, pos);
}

void bitDelay()
{
	volatile unsigned int i = bitDelayCounter;
	while((bitDelayCounter - i)<1)
	  ;
	
}
   
void start()
{
  LPC_GPIO0->DIR |= TM_DIO;
  LPC_GPIO0->DATA &= ~TM_DIO;//pinMode(m_pinDIO, OUTPUT);
  bitDelay();
}
   
void stop()
{
	LPC_GPIO0->DIR |= TM_DIO;
	LPC_GPIO0->DATA &= ~TM_DIO; //pinMode(m_pinDIO, OUTPUT);
	bitDelay();
	//LPC_GPIO0->DIR &= ~TM_CLK;  //pinMode(m_pinClk, INPUT);
	LPC_GPIO0->DATA |= TM_CLK;  //hoch
	
	bitDelay();
	LPC_GPIO0->DIR &= ~TM_DIO;  //pinMode(m_pinDIO, INPUT);
	bitDelay();
}
  
unsigned int writeByte(unsigned int b)
{
  unsigned int data = b;
  unsigned int i = 0;

  // 8 Data Bits
  for(i = 0; i < 8; i++) {
    // CLK low
    //LPC_GPIO0->DIR |= TM_CLK;
    LPC_GPIO0->DATA &= ~TM_CLK; //pinMode(m_pinClk, OUTPUT);
    bitDelay();
    
	// Set data bit
    if (data & 0x01)
      LPC_GPIO0->DIR &= ~TM_DIO;  //pinMode(m_pinDIO, INPUT);
    else{
      LPC_GPIO0->DIR |= TM_DIO;
      LPC_GPIO0->DATA &= ~TM_DIO; //pinMode(m_pinDIO, OUTPUT);
    }
    
    bitDelay();
	
	// CLK high
    LPC_GPIO0->DATA |= TM_CLK;  //pinMode(m_pinClk, INPUT);
    bitDelay();
    data = data >> 1;
  }
  
  // Wait for acknowledge
  // CLK to zero
  //LPC_GPIO0->DIR |= TM_CLK;
  LPC_GPIO0->DATA &= ~TM_CLK; //pinMode(m_pinClk, OUTPUT);
  LPC_GPIO0->DIR &= ~TM_DIO;  //pinMode(m_pinDIO, INPUT);
  bitDelay();
  
  // CLK to high
  LPC_GPIO0->DATA            |=  TM_CLK; //pinMode(m_pinClk, INPUT);
  bitDelay();
  unsigned int ack =  (LPC_GPIO0->DATA)& TM_DIO;
  if (ack == 0){
    LPC_GPIO0->DIR              |=  TM_DIO;
    LPC_GPIO0->DATA &= ~TM_DIO; //pinMode(m_pinDIO, OUTPUT);
  }
	
	
  bitDelay();
  //LPC_GPIO0->DIR |= TM_CLK;
  LPC_GPIO0->DATA &= ~TM_CLK; //pinMode(m_pinClk, OUTPUT);
  bitDelay();
  
  return ack;
}

unsigned int encodeDigit(unsigned int digit)
{
	return digitToSegment[digit & 0x0f];
}

   
