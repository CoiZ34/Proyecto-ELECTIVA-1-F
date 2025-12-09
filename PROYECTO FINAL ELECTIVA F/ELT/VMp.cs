using System;

namespace EtlEjemplo
{
    public class OrderMapper
    {
        public Order MapearDesdeLinea(string linea)
        {
            string[] partes = linea.Split(',');

            if (partes.Length < 4)
            {
                return null;
            }

            Order order = new Order();

            try
            {
                order.OrderID = int.Parse(partes[0]);
                order.CustomerID = int.Parse(partes[1]);
                order.OrderDate = DateTime.Parse(partes[2]);
                order.Status = partes[3];
            }
            catch
            {
                return null;
            }

            return order;
        }
    }
}