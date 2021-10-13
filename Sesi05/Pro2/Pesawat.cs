using System;

public class Pesawat{
    public string nama;

    private string ket;
    public string ketinggian{
        get {return ket;}
        set {ket = value;}
    }

    public void terbang(){
        Console.WriteLine("Pesawat dengan nama {0}, sedang take off", this.nama);
    }
    public void sudahterbang(){
        Console.WriteLine("Pesawat sekarang berada pada ketinggian {0}", this.ketinggian);
    }
}