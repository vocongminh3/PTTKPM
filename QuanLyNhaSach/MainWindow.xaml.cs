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

namespace QuanLyNhaSach
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ///http://materialdesigninxaml.net/home
        ///
        private QuanLyKho.BLL.MainWindowBLL mainBll = new QuanLyKho.BLL.MainWindowBLL();
        private void LoadData()
        {
            bookList.ItemsSource = mainBll.getBooks();
        }
        public MainWindow()
        {
            InitializeComponent();
        }

        private void ControlBarUC_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }
        protected override void OnClosed(EventArgs e)
        {
            base.OnClosed(e);

            Application.Current.Shutdown();
        }

        private void mainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            LoadData();
        }

        private void searchButton_Click(object sender, RoutedEventArgs e)
        {
            bookList.ItemsSource = mainBll.getBooks();
            //bookList.ItemsSource = mainBll.searhBooks(searchText.Text);
        }

        private void searchText_TextChanged(object sender, TextChangedEventArgs e)
        {
            bookList.ItemsSource = mainBll.searhBooks(searchText.Text);
        }

        private void bookList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //var selectedBook = bookList.SelectedItem as QuanLyKho.Sach;
            
        }
        //upload file sql

        private void PhieuNhap_button(object sender, RoutedEventArgs e)
        {
            this.Hide();
            BookWindow bookWindow = new BookWindow();
            bookWindow.ShowDialog();
            LoadData();
            this.ShowDialog();
        }

        private void bansach_button(object sender, RoutedEventArgs e)
        {
            this.Hide();
            BillWindow billWindow = new BillWindow();
            billWindow.ShowDialog();
            LoadData();
            this.ShowDialog();
        }
    }
}
