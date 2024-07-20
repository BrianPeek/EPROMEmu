#include <Arduino.h>
#include <SPI.h>
#include <SD.h>

// FLASHMEM
// DMAMEM
// PROGMEM

enum eMode : unsigned char
{
	m27C256 = 1,
	m27C010 = 2,
	m27C020 = 3,
};

#define ROM_BUFFER_LEN (256*1024)
EXTMEM char buffer[ROM_BUFFER_LEN];
const char *filename = "rom.bin";
eMode mode = m27C020;
Stream* stream;

int32_t inPins[] = { 19,18,14,15,40,41,17,16,22,23,20,21,38,39,26,27,24,25,-1 };
int32_t outPins[] = { 10,12,11,13,8,7,36,37,-1 };

void readData(Stream* s)
{
	const int length = 1024;
	char buff[length];
	int total = 0;

	mode = (eMode)s->read();

	memset(buffer, 0xFF, ROM_BUFFER_LEN);

	size_t read = 0;
	char* p = buffer;

	do
	{
		memset(buff, 0, length);

		read = s->readBytes(buff, length);

		if(read > 0)
		{
			memcpy(p, buff, read);
			p += read;
			total += read;
		}
	}
	while(read != 0);

	SD.remove(filename);

	File f = SD.open(filename, O_WRITE);
	f.write(buffer, total);
	f.close();
}

void setPinMode(int32_t* pins, int32_t direction)
{
	for(int i = 0; pins[i] != -1; i++)
		pinMode(pins[i], direction);
}

void setup()
{
	mode = m27C256;

	setPinMode(inPins, INPUT);
	setPinMode(outPins, OUTPUT);
	GPIO7_DR = 0;

	SD.begin(BUILTIN_SDCARD);

	if(SD.exists(filename))
	{
		File f = SD.open(filename, O_READ);
		size_t size = f.size();
		f.read(buffer, size);
		f.close();

		if(size > 32*1024)
			mode = m27C010;

		if(size > 128*1024)
			mode = m27C020;
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

		// 1Mbit, 128KB, 0x00000-0x1FFFF
		case m27C010:
			addr = ((io6 >> 16) & 0xFFFF) | ((io6 & 0x1000) << 4);
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



// addr
// GPIO6-16 -> 19 A0
// GPIO6-17 -> 18 A1
// GPIO6-18 -> 14 A2
// GPIO6-19 -> 15 A3
// GPIO6-20 -> 40 A4
// GPIO6-21 -> 41 A5
// GPIO6-22 -> 17 A6
// GPIO6-23 -> 16 A7
// GPIO6-24 -> 22 A8
// GPIO6-25 -> 23 A9
// GPIO6-26 -> 20 A10
// GPIO6-27 -> 21 A11
// GPIO6-28 -> 38 A12
// GPIO6-29 -> 39 A13
// GPIO6-30 -> 26 A14
// GPIO6-31 -> 27 A15
// GPIO9-04 -> 02 A16
// GPIO9-05 -> 03 A17
// GPIO9-06 -> 04 A18
// GPIO9-07 -> 33 A19

// data
// GPIO7-00 -> 10 D0
// GPIO7-01 -> 12 D1
// GPIO7-02 -> 11 D2
// GPIO7-03 -> 13 D3
// GPIO7-16 -> 08 D4
// GPIO7-17 -> 07 D5
// GPIO7-18 -> 36 D6
// GPIO7-19 -> 37 D7

// the rest
// GPIO6-12 -> 24
// GPIO6-13 -> 25
// GPIO6-02 -> 01
// GPIO6-03 -> 00

// GPIO7-10 -> 06
// GPIO7-11 -> 09
// GPIO7-12 -> 32
// GPIO7-28 -> 35
// GPIO7-29 -> 34

// GPIO8-12 -> 45
// GPIO8-13 -> 44
// GPIO8-14 -> 43
// GPIO8-15 -> 42
// GPIO8-16 -> 47
// GPIO8-17 -> 46
// GPIO8-18 -> 28
// GPIO8-22 -> 31
// GPIO8-23 -> 30

// GPIO9-08 -> 05
// GPIO9-22 -> 51
// GPIO9-24 -> 48
// GPIO9-25 -> 53
// GPIO9-26 -> 52
// GPIO9-27 -> 49
// GPIO9-28 -> 50
// GPIO9-29 -> 54
// GPIO9-31 -> 29