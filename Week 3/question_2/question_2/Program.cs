using System;

namespace question_2
{
    class Item
    {
        public string Name { get; set; }
        public static double Cost { get; set; }
    }
    class Program
    {
        static double calcGST()
        {
            return 0.08 * Item.Cost;
        }
        static void Main(string[] args)
        {
            Item i = new Item();
            i.Name = "Nutella";
            Item.Cost = 200;
            Console.WriteLine("GST = " + calcGST());
        }
    }
}
