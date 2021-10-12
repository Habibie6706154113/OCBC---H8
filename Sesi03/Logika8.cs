using System;

public class Logika8{
    public static void Main(string[] args){
        Console.Write("Masukkan angka mulai : ");
        int angka1 = int.Parse(Console.ReadLine());
        Console.Write("Masukkan angka akhir : ");
        int angka2 = int.Parse(Console.ReadLine());
        Console.Write("Masukkan operator : ");
        string operasi = Console.ReadLine();
        Console.Write("Masukkan angka untuk dihitung : ");
        int angka3 = int.Parse(Console.ReadLine());
        
        if (angka1 < angka2){
            do{
                Console.WriteLine($"i = {angka1}");
                if(operasi == "+"){
                    angka1 += angka3;
                } else if(operasi == "*"){
                    angka1 = angka1 * angka3;
                }
            }while(angka1 < angka2);
        } else if (angka1 > angka2){
            do{
                Console.WriteLine($"i = {angka1}");
                if(operasi == "-"){
                    angka1 -= angka3;
                } else if(operasi == "/"){
                    angka1 = angka1 / angka3;
                }
            }while(angka1 > angka2);
        }
    }
}