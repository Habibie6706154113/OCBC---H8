using System;

public class Laptop{
    public string merk;
    public int ram;
    public int memory;

    public void Chatting(){
        Console.WriteLine("\n{0} sedang chatting", this.merk);
    }

    public void Sosmed(){
        Console.WriteLine("{0} sedang sosmed", this.merk);
    }

    public void OnlineShop(){
        Console.WriteLine("{0} sedang online shop", this.merk);
    }
}