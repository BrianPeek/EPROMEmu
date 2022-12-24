#include <Arduino.h>
#include <SPI.h>
#include <SD.h>

// FLASHMEM
// DMAMEM
// PROGMEM

enum eMode : unsigned char
{
	m27C256 = 1,
	m27C020 = 2,
};

#define ROM_BUFFER_LEN (256*1024)
char buffer[ROM_BUFFER_LEN];
const char *filename = "rom.bin";
eMode mode = m27C020;
Stream* stream;

int32_t inPins[] = { 19,18,14,15,40,41,17,16,22,23,20,21,38,39,26,27,24,25,-1 };
int32_t outPins[] = { 10,12,11,13,8,7,36,37,-1 };

void readData(Stream* s)
{
	const int length = 1024;
	char buff[length];

	mode = (eMode)s->read();

	memset(buffer, 0xFF, ROM_BUFFER_LEN);

	size_t read = 0;
	size_t total = 0;
	char* p = buffer;

	do
	{
		memset(buff, 0, length);

		read = s->readBytes(buff, length);

		total += read;
		if(read > 0)
		{
			memcpy(p, buff, read);
			p += read;
		}
	}
	while(read != 0);

	SD.remove(filename);

	File f = SD.open(filename, O_WRITE);
	f.write(buffer, ROM_BUFFER_LEN);
	f.close();
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

	SD.begin(BUILTIN_SDCARD);

	if(SD.exists(filename))
	{
		File f = SD.open(filename, O_READ);
		f.read(buffer, f.size());
		f.close();
	}

	Serial.begin(115200);
	Serial1.begin(3000000);
}

void loop()
{
	uint32_t io6 = GPIO6_DR;
	uint32_t outb = 0;

	// read address pins
	uint32_t addr = 0;

	switch(mode)
	{
		// 256Kbit, 32KB, 0x0000-0x7FFF
		case m27C256:
			addr = ((io6 >> 16) & 0x7FFF);
			break;

		// 2Mbit, 256KB, 0x00000-0x3FFFF
		case m27C020:
		default:
			addr = ((io6 >> 16) & 0xFFFF) | ((io6 & 0x3000) << 4);
			break;
	}

	// get byte at addr
	char b = buffer[addr];

	// set data pins
	outb = ((b & 0x0F) << 0) | ((b & 0xF0) << 12);
	GPIO7_DR = outb;

	// read file from either serial port, if available
	if(Serial.available())
		readData(&Serial);

	if(Serial1.available())
		readData(&Serial1);
}
