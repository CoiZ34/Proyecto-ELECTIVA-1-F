using System;

namespace EtlEjemplo
{
    public class Program
    {
        public static void Main(string[] args)
        {
            ImpVe imp = new ImpVe();

            imp.ImpVeMetodo();

            Console.WriteLine();
            Console.WriteLine("Proceso terminado. Presiona una tecla para salir.");
            Console.ReadKey();
        }
    }
}

/*------------------------------------------
 Maestro me surgió un problema con teams y no pude ver las grabaciones, traté de realizar la actividad mientras lo soluciono. Disculpe las molestias.
 ---------------------------------------------
 
 */