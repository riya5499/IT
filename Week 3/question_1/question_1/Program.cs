using System;

namespace question_1
{
    public delegate void PriceChangedEventHandler(double price);
    class Item
    {
        public string name;
        public double price;
        public event PriceChangedEventHandler PriceChanged;
        public string Name { get; set; }
        public double Price
        {
            get
            {
                return price;
            }
            set
            {
                if(PriceChanged != null)
                {
                    PriceChanged(value);
                    price = value;
                }
                else
                {
                    price = value;
                }
            }
        }
    }
    class Program
    {
        static void PriceChangedMain (double price)
        {
            Console.WriteLine("Price changed to " + price);
        }
        static void Main(string[] args)
        {
            Item i1 = new Item();
            i1.Name = "Nutella";
            i1.PriceChanged += PriceChangedMain;
            i1.Price = 250;
            Console.WriteLine("Item name : " + i1.Name + " Item Price : " + i1.Price);
            i1.Price = 200;
            Console.WriteLine("Item name : " + i1.Name + " Item Price : " + i1.Price);
        }
    }
}
