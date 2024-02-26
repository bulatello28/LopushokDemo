using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WPFAppForDemo.Classes;

namespace WPFAppForDemo.Pages
{
    /// <summary>
    /// Логика взаимодействия для PorductsPage.xaml
    /// </summary>
    public partial class PorductsPage : Page
    {
        public PorductsPage()
        {
            InitializeComponent();
            LvProducts.ItemsSource = GetInfo();
            CbFilter.ItemsSource = App.Connection.ProductType.ToList();
        }
        public List<ProductInfo> GetInfo()
        {
            var products = App.Connection.Product.ToList();

            List<ProductInfo> productInfos = new List<ProductInfo>();

            foreach (var product in products)
            {
                productInfos.Add(new ProductInfo(product.Id, App.Connection.ProductType.Where(x => x.Id == product.IdProductType).FirstOrDefault().Title, product.Name, product.Articul, product.MinCost, product.Image));
            }
            return productInfos;
        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (CbSort.SelectedItem != null)
            {
                if (CbSort.SelectedIndex == 0)
                {
                    
                }
            }
        }

        private void CbFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var item = CbFilter.SelectedItem as ADO.ProductType;
            var products = App.Connection.Product.Where(x => x.IdProductType == item.Id).ToList();
            LvProducts.ItemsSource = products;
        }
    }
}
