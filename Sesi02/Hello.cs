using System;
 public class Hello
{
     public static void Main(string[] args)
    {
        Console.WriteLine("Hello World!");
        Console.WriteLine("Hallo Fikri Habibie");
        Console.WriteLine("Selamat datang di Program Bootcamp OCBC");
        Console.WriteLine("Tahap 1 saya akan belajar C#");

        String nama_cust = "Foxi";
        double harga1 = 10000, harga2 = 5000, harga3 = 20000;
        int jumlah1 = 10, jumlah2 = 7, jumlah3 = 13;

        double total1 = jumlah1 * harga1;
        double total2 = jumlah2 * harga2;
        double total3 = jumlah3 * harga3;

        double totaljumlahsemuabarang = jumlah1 + jumlah2 + jumlah3;
        double totalhargasemuabarang = total1 + total2 + total3;

        Console.WriteLine("\nNama Customer : " + nama_cust);
        Console.WriteLine("barang 1 per jumlah : " + jumlah1 + " dengan harga " + harga1 + " yang harus dibyar "+ total1);
        Console.WriteLine("barang 1 per jumlah : " + jumlah2 + " dengan harga " + harga2 + " yang harus dibyar "+ total2);
        Console.WriteLine("barang 1 per jumlah : " + jumlah3 + " dengan harga " + harga3 + " yang harus dibyar "+ total3);
        Console.WriteLine("Total jumlah semua barang : " + totaljumlahsemuabarang);
        Console.WriteLine("Total harga semua barang : " + totalhargasemuabarang);
    }
}
