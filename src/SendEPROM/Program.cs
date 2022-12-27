using System;
using System.IO;
using System.IO.Ports;
using System.CommandLine;
using System.Threading.Tasks;

namespace SendEPROM
{
	public class Program
    {
        public static async Task<int> Main(string[] args)
        {
            var portOption = new Option<string>(new string[] {"--port", "-p" }, description: "COM port on which to send the file",  getDefaultValue: () => "COM3");
            var baudOption = new Option<int>   (new string[] {"--baud", "-b" }, description: "Baud rate at which to send",          getDefaultValue: () => 115200);
            var modeOption = new Option<byte>  (new string[] {"--mode", "-m" }, description: "EPROM mode (1 = 27C256, 2 = 27C020)", getDefaultValue: () => 2);
            var skipOption = new Option<int>   (new string[] {"--skip", "-s" }, description: "Skip N bytes at start of file",       getDefaultValue: () => 0);

            var fileArgument = new Argument<FileInfo>("file", description: "File to send");

            var rootCmd = new RootCommand("Send a binary image to the EPROM emulator")
            {
                portOption,
                baudOption,
                modeOption,
                skipOption,
                fileArgument
            };

            rootCmd.SetHandler(
                (port, baud, mode, skip, file) =>
                {
                    SendData(port, baud, mode, skip, file);
                },
                portOption, baudOption, modeOption, skipOption, fileArgument);

            return await rootCmd.InvokeAsync(args);
        }

        static void SendData(string port, int baud, byte mode, int skip, FileInfo file)
        {

			Console.WriteLine($"Reading {file.FullName}");
			byte[] buff = File.ReadAllBytes(file.FullName);

            Console.WriteLine($"Opening {port} at {baud}");
			var sp = new SerialPort(port)
			{
				BaudRate = baud
			};
			sp.Open();

            if(mode != 0)
            {
                Console.WriteLine($"Sending mode {mode}");
                byte[] modeBuff = { mode };
                sp.Write(modeBuff, 0, 1);
            }

            Console.WriteLine($"Sending {buff.Length} bytes, skipping {skip} bytes");
            sp.Write(buff, skip, buff.Length - skip);
            sp.Close();
            Console.WriteLine("Done!");
        }
    }
}