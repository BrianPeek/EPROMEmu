#include <Arduino.h>

// forced to a 2mbit eprom
// FLASHMEM
// DMAMEM
// PROGMEM

#define ROM_BUFFER_LEN (256*1024)
DMAMEM char buffer[ROM_BUFFER_LEN];

int32_t inPins[] = { 19,18,14,15,40,41,17,16,22,23,20,21,38,39,26,27,24,25,30,31,-1 };
int32_t outPins[] = { 10,12,11,13,8,7,36,37,-1 };

int32_t cePin = 30;
int32_t pgmPin = 31;

void readFile()
{
	const int length = 1024;
	char buff[length];

	memset(buffer, 0, ROM_BUFFER_LEN);

	size_t read = 0;
	size_t total = 0;
	char* p = buffer;

	do
	{
		memset(buff, 0, length);
		read = Serial.readBytes(buff, length);
		total += read;
		if(read > 0)
		{
			memcpy(p, buff, read);
			p += read;
		}
	}
	while(read != 0);

	// on GG (and lynx?) top address bit gets stuck high (?) so mirror to upper region too?
	if(total == 131072)
		memcpy(p, buffer, 131072);
}

void setPinMode(int32_t* pins, int32_t direction)
{
	for(int i = 0; pins[i] != -1; i++)
		pinMode(pins[i], direction);
}

void setup()
{
	setPinMode(inPins, INPUT);
	setPinMode(outPins, OUTPUT);
	GPIO7_DR = 0;

	Serial.begin(115200);
}

void loop()
{
	uint32_t io6 = GPIO6_DR;
	uint32_t outb = 0;
	uint8_t ce = digitalReadFast(cePin);

	if(!ce)
	{
		// read address pins
		uint32_t addr = (((io6 >> 16) & 0xFFFF) | ((io6 & 0x3000) << 4));

		// get byte at addr
		char b = buffer[addr];

		// set data pins
		outb = ((b & 0x0F) << 0) | ((b & 0xF0) << 12);
	}

	GPIO7_DR = outb;

	if(Serial.available())
		readFile();
}
