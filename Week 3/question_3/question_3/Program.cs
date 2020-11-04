using System;

namespace question_3
{
    class TrafficSignal
    {
        public void Red ()
        {
            Console.WriteLine("RED -> STOP");
        }

        public void Yellow ()
        {
            Console.WriteLine("YELLOW -> BE READY");
        }

        public void Green ()
        {
            Console.WriteLine("GREEN -> GO");
        }
    }
    class Program
    {
        public delegate void TrafficDel();
        static void Main(string[] args)
        {
            TrafficSignal t = new TrafficSignal();
            TrafficDel tred = t.Red;
            TrafficDel tyellow = t.Yellow;
            TrafficDel tgreen = t.Green;
            tred(); tyellow(); tgreen();
        }
    }
}
