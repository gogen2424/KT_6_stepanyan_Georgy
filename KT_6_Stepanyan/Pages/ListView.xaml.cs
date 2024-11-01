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

namespace KT_6_Stepanyan.Pages
{
    /// <summary>
    /// Логика взаимодействия для ListView.xaml
    /// </summary>
    public partial class ListView : Page
    {
        public List<Data.Product> _currentProdut = Data.Georgy_StepanyanEntities.GetContext().Product.ToList();
        public ListView()
        {
            InitializeComponent();
            Init();
        }
        public void Init()
        {
            ListViewProducts.ItemsSource = Data.Georgy_StepanyanEntities.GetContext().Product.ToList();
            var Manufacter = Data.Georgy_StepanyanEntities.GetContext().Manufacture.ToList();
            Manufacter.Insert(0, new Data.Manufacture { Manufacture1 = "Все производители" });
            ComboSup.ItemsSource = Manufacter;
            ComboSup.SelectedIndex = 0;
        }

        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            Update();
        }

        private void SortUpradioButton_Checked(object sender, RoutedEventArgs e)
        {
            Update();
        }

        private void SortDownRadioButton_Checked(object sender, RoutedEventArgs e)
        {
            Update();
        }

        private void ComboSup_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
             Update();
        }
        private void Update()
        {
            var _currentProduct = Data.Georgy_StepanyanEntities.GetContext().Product.ToList();
            _currentProduct = (from item in Data.Georgy_StepanyanEntities.GetContext().Product
                               where item.ProductName.ProductName1.ToLower().Contains(SearchTextBox.Text.ToLower()) ||
                               item.Manufacture.Manufacture1.ToLower().Contains(SearchTextBox.Text.ToLower()) ||
                               item.ProductDescription.ToLower().Contains(SearchTextBox.Text.ToLower()) ||
                               item.Price.ToString().ToLower().Contains(SearchTextBox.Text.ToLower())||
                               item.ProductInStock.ToString().ToLower().Contains(SearchTextBox.Text.ToLower())
                               select item).ToList();


            if (SortUpradioButton.IsChecked == true)
            {
                _currentProduct = _currentProduct.OrderBy(d => d.Price).ToList();
            }
            if(SortDownRadioButton.IsChecked == true)
            {
                _currentProduct = _currentProduct.OrderByDescending(d => d.Price).ToList();
            }

            ListViewProducts = _currentProdut()
        }
    }
}
