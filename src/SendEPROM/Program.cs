using System.IO.Ports;
using System.Configuration;

namespace SendEPROM
{
	public class Program
    {
        public static int Main(string[] args)
        {
            if(args.Length != 3 && args.Length != 2)
                return Usage();

            string port = ConfigurationManager.AppSettings["port"];
			int baud = int.Parse(ConfigurationManager.AppSettings["baud"]);
            string file = string.Empty;
            byte mode = 0;

            if(args.Length == 2)
            {
                mode = byte.Parse(args[0]);
                file = args[1];
            }
            else if(args.Length == 3)
            {
                port = args[0];
                baud = int.Parse(args[1]);
                file = args[2];
            }

			Console.WriteLine($"Reading {file}");
			byte[] buff = File.ReadAllBytes(file);

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

            return 0;
        }

        private static int Usage()
        {
            Console.WriteLine("Usage: SendEPROM [COMX] [baud] [EPROM mode] filename");
            return -1;
        }
    }
}