using System;

public class Pro{
    public static void Main(string[] args){
        Laptop laptop1 = new Laptop();

        Console.WriteLine("Masukkan Merk Laptop: ");
        laptop1.merk = Console.ReadLine();
        Console.WriteLine("Masukkan Jumlah RAM: ");
        laptop1.ram = int.Parse(Console.ReadLine());
        Console.WriteLine("Masukkan Jumlah Memory: ");
        laptop1.memory = int.Parse(Console.ReadLine());

        Console.WriteLine("\nMerk Laptop adalah {0}", laptop1.merk);
        Console.WriteLine("Kapasitas ram adalah {0}", laptop1.ram);
        Console.WriteLine("kapasitas memory adalah {0}", laptop1.memory);

        laptop1.Chatting();
        laptop1.Sosmed();
        laptop1.OnlineShop();
    }
}