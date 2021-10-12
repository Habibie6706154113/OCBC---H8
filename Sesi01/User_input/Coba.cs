using System;

namespace User_input
{
    public class Coba
    {
        public static void Main(string[] args)
        {
            String fname, lname, birth;
            int umur, new_umur;
            
            Console.WriteLine("\n\t=== Personal Data ===");
            Console.Write("Enter Your first name\t: ");
            fname = Console.ReadLine();

            Console.Write("Enter Your last name\t: ");
            lname = Console.ReadLine();

            Console.Write("Enter Your Birth\t: ");
            birth = Console.ReadLine();

            umur = DateTime.Now.Subtract(Convert.ToDateTime(birth)).Days;
            umur = umur / 365;
            new_umur = umur + 10;

            Console.Write("\nYour Fullname is " + fname + " " + lname);
            Console.Write("\nYour age is " + umur);
            Console.Write("\nYour age after ten years is " + new_umur);
        }
    }
}