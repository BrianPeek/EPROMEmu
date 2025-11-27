using System;
using System.IO;
using System.IO.Ports;
using System.CommandLine;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Diagnostics;

namespace SendEPROM
{
	public class Program
    {
        private static Stopwatch _sw;

        private static readonly List<int> Sizes = 
        [
                   0, // Auto mode
              1*1024, // 2708
              2*1024, // 2716
              4*1024, // 2732
              8*1024, // 2764
             16*1024, // 27128
             32*1024, // 27256
             64*1024, // 27512
            128*1024, // 27010
            256*1024, // 27020
            512*1024, // 27040
 //          1024*1024, // 27080
        ];

        private static readonly List<string> SizeNames =
        [
            "Auto",
            "2708",
            "2716",
            "2732",
            "2764",
            "27128",
            "27256",
            "27512",
            "27010",
            "27020",
            "27040",
//            "27080",
        ];

        public static async Task<int> Main(string[] args)
        {
            _sw = Stopwatch.StartNew();

            var portOption = new Option<string>(["--port", "-p"], description: "COM port on which to send the file", getDefaultValue: () => "COM4");
            var baudOption = new Option<int>   (["--baud", "-b"], description: "Baud rate at which to send",         getDefaultValue: () => 115200);
            var modeOption = new Option<int>   (["--type", "-t"], description: "EPROM type\n" +
                                                                               " 0 = Auto\n" +
                                                                               " 1 = 2708\n" +
                                                                               " 2 = 2716\n" +
                                                                               " 3 = 2732\n" +
                                                                               " 4 = 2764\n" +
                                                                               " 5 = 27128\n" +
                                                                               " 6 = 27256\n" +
                                                                               " 7 = 27512\n" +
                                                                               " 8 = 27010\n" +
                                                                               " 9 = 27020\n" +
                                                                               "10 = 27040\n" 
                                                                               /*"11 = 27080"*/,                     getDefaultValue: () => 0);
            var skipOption = new Option<int>   (["--skip", "-s"], description: "Skip N bytes at start of file",      getDefaultValue: () => 0);
            var lynxOption = new Option<bool>  (["--lynx", "-l"], description: "Atari Lynx dev cart mode",           getDefaultValue: () => false);

            var fileArgument = new Argument<FileInfo>("file", description: "File to send");

            var rootCmd = new RootCommand("Send a binary image to the EPROM emulator")
            {
                portOption,
                baudOption,
                modeOption,
                skipOption,
                lynxOption,
                fileArgument,
            };

            rootCmd.AddValidator(validate =>
            {
                int mode = validate.GetValueForOption(modeOption);

                if(mode < 0 || mode > 10)
                {
                    validate.ErrorMessage = "Invalid mode specified";
                    return;
                }

                FileInfo file = validate.GetValueForArgument(fileArgument);
                int skip = validate.GetValueForOption(skipOption);

                if(file == null || !file.Exists)
                    validate.ErrorMessage = "File not specified";
                else if(mode > 0 && file.Length - skip > Sizes[mode])
                    validate.ErrorMessage = "File is too large for selected EPROM mode";
            });

            rootCmd.SetHandler(
                (port, baud, mode, skip, lynx, file) =>
                {
                    SendData(port, baud, mode, skip, lynx, file);
                },
                portOption, baudOption, modeOption, skipOption, lynxOption, fileArgument);

            return await rootCmd.InvokeAsync(args);
        }

        static void SendData(string port, int baud, int mode, int skip, bool lynx, FileInfo file)
        {
            if(mode == 0)
            {
                for(int i = 0; i < 11; i++)
                {
                    if(Sizes[i] == file.Length)
                    {
                        mode = i;
                        break;
                    }
                }

                if(mode == 0)
                {
                    Console.WriteLine("Could not determine EPROM mode from file size");
                    return;
                }
            }

			Console.WriteLine($"Reading {file.FullName}");
			byte[] buff = File.ReadAllBytes(file.FullName);

            Console.WriteLine($"Opening {port} at {baud}");
			var sp = new SerialPort(port)
			{
				BaudRate = baud
			};
			sp.Open();

            Console.WriteLine($"Sending EPROM mode {mode} ({SizeNames[mode]}), Lynx mode {lynx}");
            byte[] modeBuff = { (byte)mode, lynx ? (byte)1 : (byte)0 };
            sp.Write(modeBuff, 0, modeBuff.Length);

            int storage = sp.ReadByte();
            Console.Write("Saving data to ");
            switch(storage)
            {
                case 1:
                    Console.WriteLine("SD card");
                    break;
                case 2:
                    Console.WriteLine("flash");
                    break;
                default:
                    Console.WriteLine("UNKNOWN");
                    break;
            }

            Console.WriteLine($"Sending {buff.Length} bytes, skipping {skip} bytes");
            sp.Write(buff, skip, buff.Length - skip);

            sp.Close();

            _sw.Stop();
            Console.WriteLine($"Uploaded in {_sw.ElapsedMilliseconds}ms");
        }
    }
}