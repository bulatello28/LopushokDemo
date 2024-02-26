using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WPFAppForDemo.Classes
{
    public class ProductInfo
    {
        public int Id { get; set; }
        public string ProductType { get; set; }
        public string ProductName { get; set; }
        public string Articul {  get; set; }
        public int Price { get; set; }
        public byte[] Image { get; set; }

        public ProductInfo(int id, string productType, string productName, string articul, int price, byte[] image)
        {
            Id = id;
            ProductType = productType;
            ProductName = productName;
            Articul = articul;
            Price = price;
            Image = image;
        }
    }
}
