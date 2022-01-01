#include <Arduino.h>

// forced to a 2mbit eprom
//char buffer[256*1024];
extern char buffer[69600];
int addrPins[] = { 19,18,14,15,40,41,17,16,22,23,20,21,38,39,26,27,24,25 };
int dataPins[] = { 10,12,11,13,8,7,36,37 };

int cePin = 34;
int pgmPin = 33;

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

	//Serial.begin(115200);
    //while (!Serial.available());
	//readFile();
}

void loop()
{
	// read address pins
	uint32_t io6 = GPIO6_DR;

	uint32_t addr = (((io6 >> 16) & 0xFFFF) | ((io6 & 0x3000) << 4));
	 //Serial.printf("Addr: %08X\r\n", addr);

	// // get byte
	char b = buffer[addr];
	// Serial.printf("%02X\r\n", b);

	// set data pins
	uint32_t outb = ((b & 0x0F) << 0) |	((b & 0xF0) << 12);
	//Serial.printf("Data: %08X\r\n", outb);
	GPIO7_DR = outb;
}
