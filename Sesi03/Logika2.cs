using System;

public class Logika2{
    public static void Main(string[] args){
        string nama;
        int nilai;
        
        Console.Write("Masukkan nama : ");
        nama = Console.ReadLine();
        Console.Write("Masukkan nilai : ");
        nilai = int.Parse(Console.ReadLine());

        if (nilai < 60){
            Console.WriteLine($"{nama} Nilai kamu C");
        } else if (nilai < 80){
            Console.WriteLine($"{nama} Nilai kamu B");
        } else{
            Console.WriteLine($"{nama} Nilai kamu A");
        }
    }
}