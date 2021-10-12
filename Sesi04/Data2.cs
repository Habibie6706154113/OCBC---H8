using System;

public class Data1{
    public static void Main(string[] args){
        string[] contoh = new string [4]{
            "Motherboard", "Processor", "Power Supply", "Video Card"
        };

        Console.WriteLine("Menampilkan semua data dalam array\n");

        foreach (string contoh1 in contoh)
        {
            Console.WriteLine(contoh1);
        }

        Console.Write("\nPress any key to continue...");
    }
}