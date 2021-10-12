using System;

public class Tugas{
    public static void Main(string[] args){
        Console.Write("Enter your age : ");
        int Age = int.Parse(Console.ReadLine());
        Console.Write("Username : ");
        string userName = Console.ReadLine();
        Console.Write("Password : ");
        string password = Console.ReadLine();
        Console.Write("Jenis Kelamin (L/P) : ");
        string jenKel = Console.ReadLine();
        Console.Write("Status Nikah (Y/T) : ");
        string statNikah = Console.ReadLine();

        bool isAdult = Age > 18;
        bool isPasswordValid = password == "OCBC";
        bool isUserNameValid = userName == "fikri";

        jenKel = jenKel == "L" ? "Laki-Laki" : jenKel == "P" ? "Perempuan" : "Salah Input";
        statNikah = statNikah == "Y" ? "Sudah Menikah" : statNikah == "T" ? "Belum Menikah" : "Salah Input"; 

        if(isAdult && isPasswordValid && isUserNameValid){
            Console.Write("\nMasukkan nilai1 : ");
            int nilai1 = int.Parse(Console.ReadLine());
            Console.Write("Masukkan nilai2 : ");
            int nilai2 = int.Parse(Console.ReadLine());
            Console.Write("Masukkan nilai3 : ");
            int nilai3 = int.Parse(Console.ReadLine());
            
            Console.WriteLine("\nUmur : " + Age);
            Console.WriteLine("Username : " + userName);
            Console.WriteLine("Jenis Kelamin : " + jenKel);
            Console.WriteLine("Status Nikah : " + statNikah);

            int total = nilai1 + nilai2 + nilai3; 
            double rata = total / 3;

            Console.WriteLine("\nTotal Nilai : " + total);
            Console.WriteLine("Rata Rata Nilai : " + rata);
        }else{
            Console.WriteLine("Sorry, try again!");
        }
    }
}