using System;
using System.Collections.Generic;
using System.IO;

namespace EtlEjemplo
{
    public class AppConfig
    {
        public string RutaVentas { get; set; }

       public AppConfig()
{
    RutaVentas = @"C:\Users\ambar\Desktop\Electiva1\Elec1\orders.csv";
}
    }
}
