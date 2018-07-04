#define F_CPU 8000000UL
/*
fuses: mostly default but clkdiv8 disabled
extended: 0xFF
high: 0xDF
low: 0xE2

Only the low fuses need to be adjusted:
avrdude -c usbtiny -p t841 -U lfuse:w:0xE2:m
*/
#include <avr/io.h>
#include <util/delay.h>
//#include <avr/interrupt.h>

void uart1_init(void) { //9600 baud
    UCSR1C |= ((1 << UCSZ11) | (1 << UCSZ10));
    UCSR1B |= ((1 << RXEN1) | (1 << TXEN1));
    UBRR1L |= 51; //value 51 from Table 18-8 in ATTiny841 datasheet
}

void uart0_putchar(char c) {
    loop_until_bit_is_set(UCSR0A, UDRE0);
    UDR0 = c;
}

void uart0_init(void) { //115200 baud
    UCSR0C |= ((1 << UCSZ01) | (1 << UCSZ00));
    UCSR0B |= ((1 << RXEN0) | (1 << TXEN0)); //enable UART
    UCSR0A |= (1 << U2X0); //enable 2X mode for higher baud
    UBRR0L = 8; //value 8 from Table 18-8 in ATTiny841 datasheet
}

void uart1_putchar(char c) {
    loop_until_bit_is_set(UCSR1A, UDRE1);
    UDR1 = c;
}

char uart1_getchar(void) {
    loop_until_bit_is_set(UCSR1A, RXC1); /* Wait until data exists. */
    return UDR1;
}

char uart0_getchar(void) {
    loop_until_bit_is_set(UCSR0A, RXC0); /* Wait until data exists. */
    return UDR0;
}

int main(){
	uart1_init();
	uart0_init();
	DDRB |= (1 << DDB0); //set PB0 as output //A7 high boot
	PORTB |= (1 << PB0); //set PB0 high
	DDRB |= (1 << DDB1); //set PB1 as output //A7 high exit sleep
	PORTB |= (1 << PB1); //set PB1 high
	_delay_ms(10000); //ten second delay to "boot"
	char gps[] = {"AT+GPS=1\r"};
	int i;
	for (i = 0; i < sizeof(gps) / sizeof(char); i ++){
		uart0_putchar(gps[i]);
	}
	while(1){
		/*uart0_putchar('A');
		uart0_putchar('T');
		uart0_putchar('\r');
		_delay_ms(5000);*/
		/*char command1[] = {"AT+CMGF=1\r"};
		char command2[] = {"AT+CMGS=+14192800868\r"};
		char command3 = 0x1A;
		char message[] = {"Hello GSM"};
		int i = 0;
		for(i = 0; i < sizeof(command1) - 1; i ++){
			uart0_putchar(command1[i]);
		}
		_delay_ms(100);
		for(i = 0; i < sizeof(command2) - 1; i ++){
			uart0_putchar(command2[i]);
		}
		_delay_ms(100);
		for(i = 0; i < sizeof(message) - 1; i ++){
			uart0_putchar(message[i]);
		}
		_delay_ms(100);
		uart0_putchar(command3);
		_delay_ms(3000);*/
		char c = uart1_getchar();
		uart0_putchar(c);
	}
}


