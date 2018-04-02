using System;
using System.IO;
using System.Text;


class Program
{
    public static void Main(string [] args)
    {
        int N = 100000, L = 100021, B = 20;
        
        var t = new StringBuilder( N + " " + L + " " + B);
        
        var min = long.MaxValue;
        
        Console.WriteLine("Starting");
        
        var r = new Random();
        
        for(int i = 0; i < N; i++)
            t.Append( "\n" + (i + 21) + " " + Math.Abs(r.Next()));
       
        File.WriteAllText("8.in", t.ToString());
   
    }
}