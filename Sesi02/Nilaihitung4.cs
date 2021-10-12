using System;

public class Hitungnilai4{
    public static void Main(string[] args){
        Console.Write("Enter your age : ");
        int Age = int.Parse(Console.ReadLine());
        Console.Write("Password : ");
        string password = Console.ReadLine();

        bool isAdult = Age > 18;
        bool isPasswordValid = password == "OCBC";

        if(isAdult && isPasswordValid){
            Console.WriteLine("Welcome To The Club!");
        }else{
            Console.WriteLine("Sorry, try again!");
        }
    }
}