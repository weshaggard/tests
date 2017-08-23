using Raven.Client;
using System;

namespace ConsoleApp6
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            IDocumentStore store = null;
            var t = new NetStandard2.Class1(store);
            t.Do();
        }
    }
}
