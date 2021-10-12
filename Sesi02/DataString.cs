using System;

public class DataString{
    public static void Main(string[] args){
        string nama;
        int umur;

        Console.WriteLine("=== Program Pendaftaran Penduduk ===");
        Console.Write("Masukkan Nama : ");
        nama = Console.ReadLine();
        Console.Write("Masukkan Alamat : ");
        var alamat = Console.ReadLine();
        Console.Write("Masukkan Umur : ");
        umur = int.Parse(Console.ReadLine());

        Console.WriteLine("\nTerimakasih!");
        Console.WriteLine("Data Berikut");
        Console.WriteLine($"Nama {nama}");
        Console.WriteLine($"Alamat {alamat}");
        Console.WriteLine($"Umur {umur} tahun");
        Console.WriteLine("Sudah Disimpan!");
    }
}