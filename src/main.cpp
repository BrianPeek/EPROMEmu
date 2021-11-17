#include <Arduino.h>

// forced to a 1mbit eprom
char buffer[128*1024];

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
	Serial.begin(115200);
    while (!Serial.available());
}

void loop()
{
	readFile();

	while(true)
	{
		// read address pins
		unsigned int addr = 0;
		char byte = buffer[addr];
		// set data pins
	}
}
