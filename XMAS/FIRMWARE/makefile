TARGET = MAIN
SOURCE = MAIN.c

DEVICE = attiny24
HFUSE = 0b11011111
LFUSE = 0b01100010
EFUSE = 0b11111111
CC = avr-gcc
OBJCOPY = avr-objcopy
PROGRAMMER = usbtiny
AVRDUDE = avrdude -p $(DEVICE) -c $(PROGRAMMER)
CFLAGS  = -mmcu=$(DEVICE) -Os -Wall

all:
	$(CC) -Os -mmcu=$(DEVICE) $(SOURCE) -o $(TARGET).o
	avr-objcopy -j .text -j .data -O ihex $(TARGET).o $(TARGET).hex

flash:
	$(CC) -Os -mmcu=$(DEVICE) $(SOURCE) -o $(TARGET).o
	avr-objcopy -j .text -j .data -O ihex $(TARGET).o $(TARGET).hex
	$(AVRDUDE) -e -U flash:w:$(TARGET).hex 

fuses:
	$(AVRDUDE) -U lfuse:w:$(LFUSE):m -U hfuse:w:$(HFUSE):m -U efuse:w:$(EFUSE):m

clean:
	@rm $(TARGET).o $(TARGET).hex

