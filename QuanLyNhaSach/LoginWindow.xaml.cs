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
using System.Windows.Shapes;

namespace QuanLyNhaSach
{
    ///test update code
    /// <summary>
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void login_buttun(object sender, RoutedEventArgs e)
        {
            var test = new QuanLyKho.BLL.LoginBLL() ;            
            switch (test.checkUser(username.Text, FloatingPasswordBox.Password))
            {
                case "admin":
                    this.Hide();
                    MainWindow mainWindow = new MainWindow();
                    mainWindow.ShowDialog();
                    break;
                case "staff":
                    this.Hide();
                    StaffWindow staffWindow = new StaffWindow();
                    staffWindow.ShowDialog();
                    break;
                case "":
                    MessageBox.Show("That Bai");
                    break;
            }



            //if (user != null)
            //{
            //    if (user.tendangnhap == username.Text && user.matkhau == FloatingPasswordBox.Password && user.loai == true)
            //    {
            //        this.Hide();
            //        MainWindow mainWindow = new MainWindow();
            //        mainWindow.ShowDialog();
            //    }
            //    else if (user.tendangnhap == username.Text && user.matkhau == FloatingPasswordBox.Password && user.loai == false)
            //    {
            //        this.Hide();
            //        StaffWindow staffWindow = new StaffWindow();
            //        staffWindow.ShowDialog();
            //    }
            //    else
            //    {
            //        MessageBox.Show("That Bai");
            //    }
            //}
            //else
            //{
            //    MessageBox.Show("That Bai");
            //}
        }
        protected override void OnClosed(EventArgs e)
        {
            base.OnClosed(e);

            Application.Current.Shutdown();
        }
    }
}
