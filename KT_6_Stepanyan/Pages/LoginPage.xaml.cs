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
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder errors = new StringBuilder();
                if (string.IsNullOrEmpty(LoginTextBox.Text))
                {
                    errors.AppendLine("Заполните логин");
                }
                if(string.IsNullOrEmpty(PasswordTextBox.Password))
                {
                    errors.AppendLine("Заполните Пароль");
                }
                if(errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString(), "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
                if (Data.Georgy_StepanyanEntities.GetContext().User.Any(d => d.Login == LoginTextBox.Text && d.Password == PasswordTextBox.Password))
                {
                    try
                    {
                        
                        var User = Data.Georgy_StepanyanEntities.GetContext().User.Where(d => d.Login == LoginTextBox.Text && d.Password == PasswordTextBox.Password).FirstOrDefault();
                        MessageBox.Show("Успех!", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);

                        switch (User.Role.Role1)
                        {
                            case "Администратор":
                                Classes.Manager.MainFrame.Navigate(new Pages.AdminLKPage());
                                break;
                            case "Клиент":
                                Classes.Manager.MainFrame.Navigate(new Pages.ListView());
                                break;
                            case "Менеджер":
                                Classes.Manager.MainFrame.Navigate(new Pages.AdminLKPage());
                                break;
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.ToString(), "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                  
                    
                }
          
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
