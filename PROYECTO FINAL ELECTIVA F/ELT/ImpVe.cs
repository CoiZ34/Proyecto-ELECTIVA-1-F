using System;
using System.Collections.Generic;

namespace EtlEjemplo
{
    public class ImpVe
    {
        private readonly AppConfig _config;
        private readonly CsvFileReader _lector;
        private readonly OrderMapper _mapper;

        public ImpVe()
        {
            _config = new AppConfig();
            _lector = new CsvFileReader();
            _mapper = new OrderMapper();
        }

        public void ImpVeMetodo()
        {
            List<Order> orders = ExtraerOrders();

            Console.WriteLine("ORDENES EXTRAÍDAS:");

            foreach (Order order in orders)
            {
                Console.WriteLine(
                    "OrderID: " + order.OrderID +
                    " | CustomerID: " + order.CustomerID +
                    " | OrderDate: " + order.OrderDate.ToShortDateString() +
                    " | Status: " + order.Status
                );
            }
        }

        public List<Order> ExtraerOrders()
        {
            List<string> lineas = _lector.LeerLineas(_config.RutaVentas);
            List<Order> orders = new List<Order>();

            foreach (string linea in lineas)
            {
                Order order = _mapper.MapearDesdeLinea(linea);

                if (order != null)
                {
                    orders.Add(order);
                }
            }

            return orders;
        }
    }
}
    
