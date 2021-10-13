using System;

class Pro{
    public static void Main(string[] args){
        Pesawat pesawat = new Pesawat();
        
        Console.WriteLine("Masukkan Nama Pesawat: ");
        pesawat.nama = Console.ReadLine();
        Console.WriteLine("Masukkan Ketinggian Pesawat: ");
        pesawat.ketinggian = Console.ReadLine();

        pesawat.terbang();
        pesawat.sudahterbang();
    }
}