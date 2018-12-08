#define F_CPU 800000UL

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <avr/wdt.h>

#define WDT_SETTINGS WDTCSR |= ((1 << WDCE) | (1 << WDE) | (1 << WDP0) | (1 << WDP3)) //enable WDT 8.0s
#define WDT_ENABLE WDTCSR |= (1 << WDIE)

#define LIGHT_INT_FLAG_CLR GIFR |= (1 << INTF0)
#define LIGHT_INT_ENABLE GIMSK |= (1 << INT0)
#define LIGHT_INT_DISABLE GIMSK &= ~(1 << INT0)

void light(char pin){
 	PORTB &= ~((1 << PB0) | (1 << PB1));
	PORTA &=  ~((1 << PA0) | (1 << PA1) | (1 << PA2) | (1 << PA3));
  PORTA |= ((1 << PA5) | (1 << PA6) | (1 << PA7));
	switch (pin){
		case 1:
			PORTA |= (1 << PA0);
			PORTA &= ~(1 << PA5);
			break;
		case 2:
			PORTA |= (1 << PA1);
			PORTA &= ~(1 << PA5);
			break;
		case 3:
			PORTA |= (1 << PA2);
			PORTA &= ~(1 << PA5);
			break;
		case 4:
			PORTA |= (1 << PA3);
			PORTA &= ~(1 << PA5);
			break;
		case 5:
			PORTB |= (1 << PB0);
			PORTA &= ~(1 << PA5);
			break;
		case 6:
			PORTB |= (1 << PB1);
			PORTA &= ~(1 << PA5);
			break;
		case 7:
			PORTA |= (1 << PA0);
			PORTA &= ~(1 << PA6);
			break;
		case 8:
			PORTA |= (1 << PA1);
			PORTA &= ~(1 << PA6);
			break;
		case 9:
			PORTA |= (1 << PA2);
			PORTA &= ~(1 << PA6);
			break;
		case 10:
			PORTA |= (1 << PA3);
			PORTA &= ~(1 << PA6);
			break;
		case 11:
			PORTB |= (1 << PB0);
			PORTA &= ~(1 << PA6);
			break;
		case 12:
			PORTB |= (1 << PB1);
			PORTA &= ~(1 << PA6);
			break;
		case 13:
			PORTA |= (1 << PA0);
			PORTA &= ~(1 << PA7);
			break;
		case 14:
			PORTA |= (1 << PA1);
			PORTA &= ~(1 << PA7);
			break;
		case 15:
			PORTA |= (1 << PA2);
			PORTA &= ~(1 << PA7);
			break;
		case 16:
			PORTA |= (1 << PA3);
			PORTA &= ~(1 << PA7);
			break;
		case 17:
			PORTB |= (1 << PB0);
			PORTA &= ~(1 << PA7);
			break;
		case 18:
			PORTB |= (1 << PB1);
			PORTA &= ~(1 << PA7);
			break;
	}
}

void sleep(void){
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  sleep_mode();
}

void WDTenable(void){
  wdt_reset();
  WDT_SETTINGS;
  WDT_ENABLE;
}

#define lightDelayCycles 3
volatile char lightDelay = 0;

ISR(WDT_vect) {
  cli();
  WDT_ENABLE; //pg41 prevent reset
  light(0); //turn off the lights!
  if (lightDelay < lightDelayCycles){ //just less than one minute (8 seconds * (6 + 1) cycles = 56 seconds)
    lightDelay ++;
  } else {
    LIGHT_INT_FLAG_CLR;
    LIGHT_INT_ENABLE;
    wdt_reset();
    wdt_disable();
  }
  sei();
  sleep();
}

ISR(INT0_vect) {
  cli();
  LIGHT_INT_FLAG_CLR;
  LIGHT_INT_DISABLE;
  lightDelay = 0;
	char i;
	for (i = 1; i <= 18; i ++){
		light(i);
		_delay_ms(10);
		light(0);
		_delay_ms(10);
		light(i);
		_delay_ms(10);
		light(0);
		_delay_ms(10);
		light(i);
		_delay_ms(10);
		light(0);
		_delay_ms(10);
		light(i);
		_delay_ms(10);
		light(0);
		_delay_ms(10);
	}
	light(0); //turn off the lights!
  WDTenable();
  sei();
  sleep();
}

int main() {
	DDRB &= ~(1 << DDB2);
  DDRB |= ((1 << DDB0) | (1 << DDB1));
  DDRA |= ((1 << DDA0) | (1 << DDA1) | (1 << DDA2) | (1 << DDA3) | (1 << DDA5) | (1 << DDA6) | (1 << DDA7));
	PORTB &= ~((1 << PB0) | (1 << PB1));
	PORTA &=  ~(1 << PA0) | (1 << PA1) | (1 << PA2) | (1 << PA3);
  PORTA |= ((1 << PA5) | (1 << PA6) | (1 << PA7));
	MCUCR &= ~((1 << ISC00) | (1 << ISC01));
  LIGHT_INT_ENABLE;
  //WDTenable();
  sei();
  sleep();
  while (1) {
    //do nothing
  }
}
