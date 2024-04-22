using System.Xml.Serialization;

namespace Assignment01
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("1.silver 2.Gold 3.platinum");
            int choice = Convert.ToInt32(Console.ReadLine());
            if (choice == 1)
            {
                manage m1 = new A();
                m1.call1();
            }
            else if (choice == 2)
            {
                manage m1 = new B();
                m1.call2();
            }
            else if (choice == 3)
            {
                manage m1 = new C();
                m1.call3();
            }
            else
                Console.WriteLine("!! Invalid choice !!");
            Console.ReadLine();
        }

        public abstract class manage
        {
            protected abstract void fun1();
            protected abstract void fun2();

            public void call1()
            {
                fun1();
                fun2();

            }
            public virtual void call2()
            {

            }
            public virtual void call3()
            {

            }

        }
        public class A : manage
        {
            protected override void fun1()

            {
                Console.WriteLine("inside a function1 ");
            }
            protected override void fun2()
            {
                Console.WriteLine("inside a function2 ");
            }
        }
        public abstract class Demo : manage
        {
            protected abstract void fun3();
            public override void call2()
            {
                fun1();
                fun2();
                fun3();
                A a1 = new A();
                a1.call1();

            }
        }

        public class B : Demo
        {
            protected override void fun1()
            {
                Console.WriteLine("inside b function1");
            }
            protected override void fun2()
            {
                Console.WriteLine("inside b function2");

            }
            protected override void fun3()
            {
                Console.WriteLine("inside b function3");

            }

        }
        public abstract class demo2 : manage
        {
            protected abstract void fun3();
            protected abstract void fun4();
            protected abstract void fun5();


            public override void call3()
            {
                fun1();
                fun2();
                fun3();
                fun4();
                fun5();
                B b2 = new B();
                b2.call2();
            }
        }
        class C : demo2
        {
            protected override void fun1()
            {
                Console.WriteLine("inside c function 1");

            }
            protected override void fun2()
            {
                Console.WriteLine("inside c function 2");
            }
            protected override void fun3()
            {
                Console.WriteLine("inside c function 3");
            }
            protected override void fun4()
            {
                Console.WriteLine("inside c function 4");

            }
            protected override void fun5()
            {
                Console.WriteLine("inside c function 5");
            }
        }

    }
}