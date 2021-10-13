using System;

class Pro{
    public int bilangan1, bilangan2;
    public void bilangan(int angka1, int angka2){
        bilangan1 = angka1;
        bilangan2 = angka2;
    }

    public virtual void penjumlahanperkaliandll(){
        Console.WriteLine("Overloading 1......------->>>>>>");
        Console.WriteLine("Hasil penjumlahan angka {0} dan angka {1} = {2}", bilangan1, bilangan2, bilangan1+bilangan2);
        Console.WriteLine("Hasil Perkalian angka {0} dan angka{1} = {2}", bilangan1, bilangan2, bilangan1*bilangan2);
    }
}
class overide:Pro{
    public override void penjumlahanperkaliandll()
    {
        Console.WriteLine("Overloading 2......------->>>>>>");
        Console.WriteLine("Hasil Pembagian angka {0} dan angka {1} = {2}", bilangan1, bilangan2, bilangan1/bilangan2);
        Console.WriteLine("Hasil pengurangan angka {0} dan angka{1} = {2}", bilangan1, bilangan2, bilangan1-bilangan2);
    }
    public static void Main(String[] args){
        Pesawat pesawat = new Pesawat();
        PesawatTempur pesawatTempur = new PesawatTempur();

        Overloading overloading = new Overloading();

        while(true){
            try
            {
                Console.WriteLine("=== Menu ===\n");
                Console.WriteLine("Pilihan : ");
                Console.WriteLine("1. Pesawat Tempur");
                Console.WriteLine("2. Overloading");
                Console.WriteLine("3. Bilangan");
                Console.WriteLine("4. About Me");
                Console.WriteLine("0. Exit\n");
                Console.Write("Masukkan Pilihan : ");
                int pilih = int.Parse(Console.ReadLine());
                Console.WriteLine();

                if(pilih == 1){
                    Console.Write("Masukkan Nama Pesawat 1: ");
                    pesawat.nama = Console.ReadLine();
                    Console.Write("Masukkan Jumlah Roda Pesawat 1: ");
                    pesawat.jumlahroda = int.Parse(Console.ReadLine());
                    Console.Write("Masukkan Ketinggian Pesawat 1: ");
                    pesawat.ketinggian = Console.ReadLine();
                    Console.Write("Masukkan Jumlah Penumpang Pesawat 1: ");
                    pesawat.jumlahpenumpang = int.Parse(Console.ReadLine());
                    Console.WriteLine();

                    Console.Write("Masukkan Nama Pesawat 2: ");
                    pesawatTempur.nama = Console.ReadLine();
                    Console.Write("Masukkan Jumlah Roda Pesawat 2: ");
                    pesawatTempur.jumlahroda = int.Parse(Console.ReadLine());
                    Console.Write("Masukkan Ketinggian Pesawat 2: ");
                    pesawatTempur.ketinggian = Console.ReadLine();
                    Console.Write("Masukkan Jumlah Penumpang Pesawat 2: ");
                    pesawatTempur.jumlahpenumpang = int.Parse(Console.ReadLine());
                    Console.WriteLine();

                    pesawat.terbangtinggi();
                    pesawatTempur.terbangtinggi();
                    pesawatTempur.terbang();
                    Console.WriteLine();
                } else if(pilih == 2){
                    Console.Write("Masukkan Nama: ");
                    string nama = Console.ReadLine();

                    Console.Write("Masukkan Nomor Telepon: ");
                    int noTelpon = int.Parse(Console.ReadLine());

                    overloading.print(nama);
                    overloading.print(noTelpon);
                    Console.WriteLine();
                } else if(pilih == 3){
                    Console.Write("Masukkan Bilangan 1: ");
                    int bil1 = int.Parse(Console.ReadLine());
                    Console.Write("Masukkan Bilangan 2: ");
                    int bil2 = int.Parse(Console.ReadLine());
                    Console.WriteLine();

                    Pro overiding = new Pro();
                    overiding.bilangan(bil1, bil2);
                    overiding.penjumlahanperkaliandll();
                    Console.WriteLine();

                    overiding = new overide();
                    overiding.bilangan(bil1, bil2);
                    overiding.penjumlahanperkaliandll();
                    Console.WriteLine();
                } else if(pilih == 4){
                    Console.WriteLine("Halo, nama saya Fikri Habibie asal Tangerang.");
                    Console.WriteLine("Selama Pembelajaran dari sesi 1 sampai sesi 5 ini sangat menyenangkan,");
                    Console.WriteLine("Banyak hal yang membuat saya penasaran dan semangat untuk mempelajari C# lebih lanjut");
                    Console.WriteLine();
                } else if(pilih == 0){
                    break;
                } else{
                    Console.WriteLine("Inputan Tidak Tersedia di Menu\n");
                }

                Console.Write("Apakah Masih Ingin Lanjut?(Y/N)");
                string lanjut = Console.ReadLine();
                if(lanjut.ToLower() == "y"){
                    continue;
                } else{
                    break;
                }
            }
            catch (System.Exception)
            {
                Console.WriteLine("Inputan Harus Berupa Angka");
            }
        }
    }
}