using System;

namespace EjerProgra_Prograusmcl.Divisores
{
    class Divisors
    {
        public Divisors()
        {
            AskForNumber();
        }

        private static void Main(string[] args)
        {
            new Divisors();
        }

        public void AskForNumber()
        {
            Console.WriteLine("Enter a number:");
            int number = Convert.ToInt32(Console.ReadLine());

            CalculateDivisors(number);
        }

        public void CalculateDivisors(int number)
        {
            for(int i= 1; i <= number; i++)
            {
                if (number % i == 0)
                {
                    Console.Write(i + "  ");
                }
            }
        }
    }
}
