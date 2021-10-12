using System;
using System.Globalization;
using System.Collections.Generic;

public class FikriHabibie_001_Assignment1{
    public static void Main(string[] args){
        Console.WriteLine("\n=== Selamat data di Assignment 1 ===");
        Console.WriteLine("Nama Saya\t: Fikri Habibie");
        Console.WriteLine("Nomor Peserta\t: 029");
        Console.WriteLine("Asal\t\t: Tangerang\n");
        while(true){
            try
            {
                Console.WriteLine("=== Menu ===\n");
                Console.WriteLine("Pilihan : ");
                Console.WriteLine("1. Soal 1 (Segitiga Alfabet)");
                Console.WriteLine("2. Soal 2 (Segitiga Angka)");
                Console.WriteLine("3. Soal 3 (Faktorial)");
                Console.WriteLine("4. Soal 4 (Balik Angka)");
                Console.WriteLine("5. Soal 5 (Converter angka)");
                Console.WriteLine("6. Soal Tambahan (Palindrom)");
                Console.WriteLine("0. Exit\n");
                Console.Write("Masukkan Pilihan : ");
                int pilih = int.Parse(Console.ReadLine());

                if (pilih == 0){
                    Console.WriteLine("\nTerimakasih Telah Menjalankan Program Ini");
                    break;
                } 
                else if (pilih == 1){
                    Console.WriteLine("\n=== Soal 1 (Segitiga Alfabet) ===\n");
                    
                    Console.Write("Masukkan jumlah baris: ");
                    int barisH = int.Parse(Console.ReadLine());

                    char ch = 'A';
                    for(int i = 1; i <= barisH; i++){
                        for(int j = barisH; j >= i; j--){
                            Console.Write(" ");
                        }
                        for(int k = 1; k <= i; k++)
                            Console.Write(ch++);
                        ch--;
                        for(int l = 1; l < i; l++)
                            Console.Write(--ch);
                        Console.Write("\n");
                        ch='A';
                    }
                    Console.WriteLine();
                } 
                else if (pilih == 2){
                    Console.WriteLine("\n=== Soal 2 (Segitiga Angka) ===\n");

                    Console.Write("Masukkan jumlah baris: ");
                    int barisA = int.Parse(Console.ReadLine());

                    int angka = 1;
                    for(int i = 1; i <= barisA; i++){
                        for(int j = barisA; j >= i; j--)
                            Console.Write(" ");
                        for(int k = 1; k <= i; k++)
                            Console.Write(angka++);
                        angka--;
                        for(int l = 1; l < i; l++)
                            Console.Write(--angka);
                        Console.Write("\n");
                        angka=1;
                    }
                    Console.WriteLine();
                } 
                else if (pilih == 3){
                    Console.WriteLine("\n=== Soal 3 (Faktorial) ===\n");

                    int hasil = 1;
                    Console.Write("Masukkan Angka: ");
                    int faktorial = int.Parse(Console.ReadLine());

                    for(int i = faktorial; i > 1; i--){
                        hasil *= i;
                    }
                    Console.WriteLine($"Faktorial dari {faktorial} adalah: {hasil}");
                } 
                else if (pilih == 4){
                    Console.WriteLine("\n=== Soal 4 (Balik Angka) ===\n");

                    Console.Write("Masukkan angka: ");
                    string input = Console.ReadLine();

                    Console.Write("Reversed Number: ");
                    for (int i = input.Length-1; i >= 0; i--){
                        Console.Write(input[i]);
                    }
                    Console.WriteLine("\n");
                } 
                else if (pilih == 5){
                    Console.WriteLine("\n=== Soal 5 (Converter angka) ===\n");

                    Dictionary<string, string> dict = new Dictionary<string, string>{
                        {"1", "One"},
                        {"2", "Two"},
                        {"3", "Three"},
                        {"4", "Four"},
                        {"5", "Five"},
                        {"6", "Six"},
                        {"7", "Seven"},
                        {"8", "Eight"},
                        {"9", "Nine"},
                        {"0", "Zero"},
                    };

                    Console.Write("Masukkan angka: ");
                    string number = Console.ReadLine();

                    for (int i = 0; i < number.Length; i++){
                        Console.Write(dict[number[i].ToString()] + " ");
                    }
                    Console.WriteLine();
                } 
                else if (pilih == 6){
                    Console.WriteLine("\n=== Soal Tambahan (Palindrom) ===\n");

                    string reverse = "";
                    Console.Write("Masukkan Kata: ");
                    string asli = Console.ReadLine();

                    for (int i = asli.Length-1; i >= 0; i--){
                        reverse += asli[i];
                    }

                    if(asli.ToLower(CultureInfo.CurrentCulture) == reverse.ToLower(CultureInfo.CurrentCulture)){
                        Console.WriteLine("Kata ini adalah palindrom");
                    } else{
                        Console.WriteLine("Kata ini bukan palindrom");
                    }
                    Console.WriteLine();
                } 
                else{
                    Console.WriteLine("\nInputan Tidak Tersedia di Menu\n");
                }
            }
            catch (System.Exception)
            {
                Console.WriteLine("\nInputan Harus Berupa Angka\n");
            }
        }
    }
}