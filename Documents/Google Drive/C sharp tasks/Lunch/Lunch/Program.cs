using System;

namespace Lunch
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Lunch ute");

            int LunchGgrVeckan;
            int VeckorPåÅret;
            float LunchKostnad;
            float ÅrsKostnad;

            LunchGgrVeckan = 3;
            Console.WriteLine("Hur många gånger per vecka äter du ute? " + LunchGgrVeckan+"ggr");
            VeckorPåÅret = 52;
            LunchKostnad = 95;
            Console.WriteLine("Lunch kostar i genomsnitt: " + LunchKostnad +"kr"+ " per gång");

            ÅrsKostnad = VeckorPåÅret * LunchGgrVeckan * LunchKostnad;


            Console.Write("Du spenderar:");
            Console.Write(ÅrsKostnad);
            Console.WriteLine("kr per år");
            Console.ReadLine();





                


        

        }
    }
}
