using System;

namespace Ålder
{
    class Program
    {
        static void Main(string[] args)
        {
           Console.WriteLine("How old will you be in the year 2043?");

            int BirthYear;
            int FutureYear;
            int Age;

            BirthYear = 1988;
            FutureYear = 2043;
            Age = FutureYear - BirthYear;

            Console.Write("You will be: ");
            Console.Write(Age);
            Console.WriteLine(" years old");
            Console.ReadLine();




        }
    }
}
