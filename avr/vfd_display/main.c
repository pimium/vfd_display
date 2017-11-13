/*************************************************************************
Title:    Example program for the Interrupt controlled UART library
Author:   Peter Fleury <pfleury@gmx.ch>   http://tinyurl.com/peterfleury
File:     $Id: test_uart.c,v 1.7 2015/01/31 17:46:31 peter Exp $
Software: AVR-GCC 4.x
Hardware: AVR with built-in UART/USART

DESCRIPTION:
          This example shows how to use the UART library uart.c

*************************************************************************/
#include <avr/interrupt.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <stdlib.h>

/* define CPU frequency in Hz in Makefile */
#ifndef F_CPU
#error "F_CPU undefined, please define CPU frequency in Hz in Makefile"
#endif

/* Define UART buad rate here */
#define UART_BAUD_RATE 9600

void *state_idle(void);
void *state_clk_low(void);
void *state_clk_high(void);
void SR_write(uint8_t reg, uint8_t data);

volatile uint8_t busy_flag = 1;
volatile uint8_t data_flag = 0;
volatile uint8_t data_register = 0;
volatile uint8_t shift_register = 0;
volatile uint8_t count_flag = 0;

// State pointer
typedef void *(*StateFunc)(void);
StateFunc statefunc = state_idle;

void SR_write(uint8_t reg, uint8_t data){
  busy_flag = 1;
  shift_register = reg;
  data_register = data;
  count_flag = 8;
  data_flag = 1;
  while(busy_flag);
  return;
}

// States
void *state_idle(void)
{
  
  PORTD &= ~(1 << PD0);
  
  if (data_flag)
  {
    data_flag = 0;
    return state_clk_low;
  }
  busy_flag = 0;
  return state_idle;
}

void *state_rclk_low(void)
{
  busy_flag = 1;
  switch(shift_register) {
    case 0:
      PORTB &= ~(1 << PB0);
      break;
      case 1:
        PORTD &= ~(1 << PD2);
        break;
      case 2:
        PORTD &= ~(1 << PD3);
        break;
      case 3:
        PORTD &= ~(1 << PD4);
        break;
      case 4:
        PORTD &= ~(1 << PD5);
        break;
      case 5:
        PORTD &= ~(1 << PD6);
        break;
      case 6:
         PORTB &= ~(1 << PB3);
         break;
      case 7:
         PORTB &= ~(1 << PB4);
         break;
      default:
        break;
      }
  return state_idle;
}

void *state_rclk_high(void)
{
  busy_flag = 1;
  PORTB |= ((1 << PB0) | (1 << PB3) | (1 << PB4));
  PORTD |= ((1 << PD2) | (1 << PD3) | (1 << PD4) | (1 << PD5) | (1 << PD6));
  return state_rclk_low;
}

void *state_clk_low(void)
{
  PORTD &= ~(1 << PD0);
  busy_flag = 1;
  if (!count_flag)
  {
    return state_rclk_high;
  }
  count_flag--;
  if (data_register & (1 << 7))
  {
    PORTB |= (1 << PB1);
  }else
    PORTB &= ~(1 << PB1);
  data_register = data_register << 1;
  return state_clk_high;
}



void *state_clk_high(void)
{
  busy_flag = 1;
  PORTD |= (1 << PD0);
  return state_clk_low;
}

ISR(TIMER0_OVF_vect)
{
  PORTA ^= (1 << PA1);
  PORTA ^= (1 << PA0);
  statefunc = (StateFunc)(*statefunc)();
  return;
}

int main(void)
{

  DDRD |= ((1 << PD0) | (1 << PD1) | (1 << PD2) | (1 << PD3) | (1 << PD4) | (1 << PD5) | (1 << PD6));
  DDRB |= ((1 << PB0) | (1 << PB1) | (1 << PB3) | (1 << PB4));
  DDRA |= ((1 << PA0) | (1 << PA1));

  PORTD &= ~(1 << PD1);
  // Timer 0 konfigurieren
  TCCR0B = (0 << CS02) | (1 << CS00); // Prescaler
  // TCCR0B = 0; // Disable timer

  // TIMSK |= (1 << OCIE0A); // Interrupt on compare A match erlauben
  TIMSK |= (1 << TOIE0); // Timer Overflow Interrupt

  // Global Interrupts aktivieren
  sei();

  SR_write(0, 0x20);
    while(busy_flag);

  /* loop */
  while (1)
  {
    PORTD |= (1 << PD1);
    
    for (int i = 0; i < 8; ++i)
    {
      SR_write(0, (1 << i));
    }
    // statefunc = state_clk_high;
  }
  return 1;
}
