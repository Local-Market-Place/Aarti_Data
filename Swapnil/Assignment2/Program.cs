using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment1
{
    public delegate void Mydelegates();
    internal class Program
    {
        static void Main(string[] args)
        {
            pdf p1 = new pdf();
            Mydelegates d1 = new Mydelegates(p1.parse);
            Mydelegates d2 = new Mydelegates(p1.validate);
            Mydelegates d3 = new Mydelegates(p1.save);
            Mydelegates d4 = new Mydelegates(p1.revalidate);
            //coupling between events and delegates

            p1.e1 += d1;
            p1.e1 += d2;
            p1.e1 += d3;

            Console.WriteLine("do you want to add special functionality y/n");
            char ch = Convert.ToChar(Console.ReadLine());
            if (ch == 'y')
            {
                p1.e1 += d4;
            }
            p1.call(); //  calling event e1
            Console.ReadLine();
        }
        public class pdf
        {
            public event Mydelegates e1;
            public void parse()
            {
                Console.WriteLine("pdf parsed");
            }
            public void validate()
            {
                Console.WriteLine("pdf validated");
            }
            public void save()
            {
                Console.WriteLine("pdf saved");
            }
            public void revalidate()
            {
                Console.WriteLine("pdf revalidated");
            }
            public void call()
            {
                e1();
            }
        }

    }
}
