using System;

namespace Currency
{
    class Program
    {
        static void Main(string[] args)
        {
            int SvenskKrona;
            Double Sekridk;
            Double Sekieu;
            Double Dkronor;
            Double Euro;

            SvenskKrona = 100;
            Sekridk = 0.78;
            Sekieu = 0.11;
            Dkronor = Sekridk * SvenskKrona;
            Euro = Sekieu * SvenskKrona;

            Console.WriteLine(SvenskKrona + " kronor är: "  + Dkronor + "dk");
            Console.WriteLine(SvenskKrona + " kronor är: " + Euro + " euro");
            Console.ReadLine();


        }
    }
}
