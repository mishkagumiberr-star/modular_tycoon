//замени путь к money.txt на свой путь, я хз как делать чтобы шарп находил файл независимо от пути
//этот дропер обходится как пример для других дроперов
using System;
using System.Threading;
using System.IO;
class Program
{
    static void Main()
    {
        Random random = new Random();
        while (true)
        {
            int random2 = random.Next(1, 10 +1 );
            File.AppendAllText("/home/tret/modular_tycoon/balance.txt", int.Parse(random2.ToString()).ToString());
            Thread.Sleep(1000);
        }
    }
}
