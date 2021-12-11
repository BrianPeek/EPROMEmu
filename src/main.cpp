#include <Arduino.h>

// forced to a 1mbit eprom
char buffer[128*1024];
int addrPins[] = { 24,25,22,23,20,21,38,39,26,27,19,18,14,15,40,41,17,16 };
int dataPins[] = { 10,12,11,13,6,9,32,8 };

int oePin = 33;

void readFile()
{
	#define BUFFLEN 1024
	char buff[BUFFLEN];

	size_t read = 0;
	size_t total = 0;
	char* p = buffer;

	do
	{
		read = Serial.readBytes(buff, BUFFLEN);
		total += read;
		if(read > 0)
		{
			memcpy(p, buff, read);
			p += read;
		}
	}
	while(read != 0);

	Serial.printf("Total read: %d\r\n", total);
}

void setup()
{
	for(int i = 0; i < 18; i++)
		pinMode(addrPins[i], INPUT);

	for(int i = 0; i < 8; i++)
		pinMode(dataPins[i], OUTPUT);

	pinMode(oePin, INPUT);

	Serial.begin(115200);
    while (!Serial.available());
	readFile();
}

void loop()
{
	for(int i = 0; i < 18; i++)
	{
		int x = digitalReadFast(addrPins[i]);
		Serial.printf("%d", x);
	}
	Serial.printf("\r\n");
	if(digitalReadFast(oePin))
	{
		GPIO7_DR = 0xFF;
	}
	else	
	{
		uint32_t io6 = GPIO6_DR;

		uint16_t addr = ((io6 >> 12 & 0x03) |
						(io6 >> 14 & 0xFFFC));

		Serial.printf("Addr: %08X\r\n", addr);

		char b = buffer[addr];
		Serial.printf("%02X\r\n", b);
		// set data pins
		uint32_t outb = (((b & 0x0F) << 0) |
							((b & 0x70) << 5) |
							((b & 0x80) << 8));
		Serial.printf("Data: %08X\r\n", outb);
		GPIO7_DR = outb;
	}
}
