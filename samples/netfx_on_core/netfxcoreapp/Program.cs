using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetFXConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            System.Diagnostics.Debug.WriteLine("Testing 123");
            Console.WriteLine($"Running on core assembly {typeof(object).Assembly.Location}.");
        }
    }
}
