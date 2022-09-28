using System.IO.Ports;
using System.CommandLine;

namespace SendEPROM
{
	public class Program
    {
        public static async Task<int> Main(string[] args)
        {
            var rootCmd = new RootCommand("Send a binary image to the EPROM emulator");

            var portOption = new Option<string>      (new string[] {"--port", "-p" }, description: "COM port on which to send the file",  getDefaultValue: () => "COM3");
            var baudOption = new Option<int>         (new string[] {"--baud", "-b" }, description: "Baud rate at which to send",          getDefaultValue: () => 115200);
            var modeOption = new Option<byte>        (new string[] {"--mode", "-m" }, description: "EPROM mode (1 = 27C256, 2 = 27C020)", getDefaultValue: () => 2);

            var fileArgument = new Argument<FileInfo>("file", description: "File to send");

            rootCmd.AddOption(portOption);
            rootCmd.AddOption(baudOption);
            rootCmd.AddOption(modeOption);
            rootCmd.AddArgument(fileArgument);

            rootCmd.SetHandler((port, baud, mode, file) =>
            {
                SendData(port, baud, mode, file);
            },
            portOption, baudOption, modeOption, fileArgument);

            return await rootCmd.InvokeAsync(args);
        }

        static void SendData(string port, int baud, byte mode, FileInfo file)
        {

			Console.WriteLine($"Reading {file.Name}");
			byte[] buff = File.ReadAllBytes(file.Name);

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

            Console.WriteLine($"Sending {buff.Length} bytes");
            sp.Write(buff, 0, buff.Length);
            sp.Close();
            Console.WriteLine("Done!");
        }
    }
}