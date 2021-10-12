using System;

public class String1{
    public static void Main(string[] args){
        char[] charray = {'1', ' ', 's', 't', 'r', 'i', 'n', 'g', '.'};
        string str1 = new string(charray);
        string str2 = "String lain.";

        Console.WriteLine(str1);
        Console.WriteLine(str2);
    }
}