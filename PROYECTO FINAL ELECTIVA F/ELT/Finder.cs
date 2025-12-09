
    public class CsvFileReader
    {
        public List<string> LeerLineas(string rutaArchivo)
        {
            List<string> lineas = new List<string>();

            if (!File.Exists(rutaArchivo))
            {
                Console.WriteLine("Archivo no encontrado: " + rutaArchivo);
                return lineas;
            }

            using (StreamReader lector = new StreamReader(rutaArchivo))
            {
                string linea = lector.ReadLine();

                bool esPrimera = true;

                while (linea != null)
                {
                    if (!esPrimera)
                    {
                        lineas.Add(linea);
                    }
                    else
                    {
                        esPrimera = false;
                    }

                    linea = lector.ReadLine();
                }
            }

            return lineas;
        }
    }