using System;

public class Logika3{
    public static void Main(string[] args){
        Console.Write("Username : ");
        string username = Console.ReadLine();
        Console.Write("Password : ");
        string password = Console.ReadLine();

        bool isUserNameValid = username == "ocbc";
        bool isPasswordValid = password == "bootcamp";

        if (isUserNameValid && isPasswordValid){
            Console.WriteLine("Anda berhasil login");
        } else{
            Console.WriteLine("Username atau Password anda salah");
        }
    }
}