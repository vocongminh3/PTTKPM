using Microsoft.OData.Edm;
using System;
using System.Collections.Generic;
using System.Globalization;
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
    /// <summary>
    /// Interaction logic for BookWindow.xaml
    /// </summary>
    
    

    public partial class ReportWindow : Window
    {

        
        
        public ReportWindow()
        {
            InitializeComponent();

        }

        

        private void reportLoaded(object sender, RoutedEventArgs e)
        {
            for( int i = 1; i< 13;i++)
            {
                month.Items.Add(i);
            } 
            for (int i = 1990; i < 2100; i++)
            {
                year.Items.Add(i);
            }    
        }

        private void searchReport_Click(object sender, RoutedEventArgs e)
        {
            //MessageBox.Show(month.Text);
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            int intmonth = 0;
            int intyear = 0;
            if (!string.IsNullOrEmpty(month.Text) && !string.IsNullOrEmpty(year.Text))
            {
                intmonth = Int32.Parse(month.Text);
                intyear = Int32.Parse(year.Text);
            }
            int intmonthbefore = 0;
            int intyearbegore = 0;
            if(intmonth == 1)
            {
                intmonthbefore = 12;
                intyearbegore = intyear - 1;
            }    
            else
            {
                intmonthbefore = intmonth -1;
                intyearbegore = intyear ;
            }    
            
            //var dataPPT1 = db.PhieuThuTiens
            //    .Where(s => s.NgayThuTien.Value.Month == intmonth && s.NgayThuTien.Value.Year == intyear)
            //    .GroupBy(p => p.MaKhachHang)
            //    .Select(
            //    g => 
            //    new { 
            //        MaKhachHang = g.Key,
            //        sum = g.Sum(s =>s.SoTienThu)

            //    }
            //    )
            //    .Join(db.KhachHangs,sumPPT => sumPPT.MaKhachHang, kh=>kh.MaKhachHang,(sumPPT, kh) => new { 
            //          MaKhachHang = kh.MaKhachHang,
            //          KhachHang = kh.TenKhachHang,
            //          NoCuoi = sumPPT.sum
            //    })
            //    ;
            //var dataPPT2 = db.PhieuThuTiens
            //    .Where(s => s.NgayThuTien.Value.Month == intmonthbefore  && s.NgayThuTien.Value.Year == intyearbegore)
            //    .GroupBy(p => p.MaKhachHang)
            //    .Select(
            //    g =>
            //    new {
            //        MaKhachHang = g.Key,
            //        sum = g.Sum(s => s.SoTienThu)

            //    }
            //    )
            //    .Join(db.KhachHangs, sumPPT => sumPPT.MaKhachHang, kh => kh.MaKhachHang, (sumPPT, kh) => new {
            //        MaKhachHang = kh.MaKhachHang,
            //        KhachHang = kh.TenKhachHang,
            //        NoDau = sumPPT.sum
            //    })
            //    ;
            //var dataPPTresult = dataPPT1
            //    .Join(dataPPT2, ppt1 => ppt1.MaKhachHang, ppt2 => ppt2.MaKhachHang, (pp1, pp2) => new
            //    {
            //       KhachHang =  pp1.KhachHang,
            //       NoDau = pp2.NoDau,
            //       NoCuoi = pp1.NoCuoi,
            //       PhatSinh = pp1.NoCuoi - pp2.NoDau

            //    }
            // ).ToList();
            var query = (from ptt in db.PhieuThuTiens
                         where ptt.NgayThuTien.Value.Month == intmonth && ptt.NgayThuTien.Value.Year == intyear
                         group ptt by ptt.MaKhachHang into g
                        join kh in db.KhachHangs on g.Key equals kh.MaKhachHang 
                        where kh.BiXoa == false
                        select new
                        {
                            MaKhachHang = g.Key,
                            TenKhachHang = kh.TenKhachHang,
                            NoCuoi = g.Sum(s => s.SoTienThu)

                        }
                        );
            var query1 = (from ptt in db.PhieuThuTiens
                         where ptt.NgayThuTien.Value.Month == intmonthbefore && ptt.NgayThuTien.Value.Year == intyearbegore
                         group ptt by ptt.MaKhachHang into g
                         join kh in db.KhachHangs on g.Key equals kh.MaKhachHang
                          where kh.BiXoa == false
                          select new
                         {
                             MaKhachHang = g.Key,
                             TenKhachHang = kh.TenKhachHang,
                             NoDau = g.Sum(s => s.SoTienThu)
                         }
                        );
            var dd = (from a in query
                      join b in query1 on a.MaKhachHang equals b.MaKhachHang into c
                      from x in c.DefaultIfEmpty()
                      select new
                      {
                          KhachHang = a.TenKhachHang,
                          NoCuoi = a.NoCuoi,
                          NoDau = (x == null ? 0: x.NoDau),
                          PhatSinh = (x==null? a.NoCuoi : a.NoCuoi -  x.NoDau)
                      }).ToList();
            reportmoney.ItemsSource = dd;


            var querySach1 = (from pn in db.PhieuNhaps
                         where pn.NgayNhap.Value.Month == intmonth && pn.NgayNhap.Value.Year == intyear
                         group pn by pn.MaSach into g
                         join s in db.Saches on g.Key equals s.MaSach
                         where s.BiXoa == false
                         select new
                         {
                             MaSach = g.Key,
                             TenSach = s.TenSach,
                             TonCuoi = g.Sum(a => a.SoLuong)

                         }
                        );
            var querySach2 = (from pn in db.PhieuNhaps
                             where pn.NgayNhap.Value.Month == intmonthbefore && pn.NgayNhap.Value.Year == intyearbegore
                             group pn by pn.MaSach into g
                             join s in db.Saches on g.Key equals s.MaSach
                             where s.BiXoa == false
                              select new
                             {
                                 MaSach = g.Key,
                                 TenSach = s.TenSach,
                                 TonDau = g.Sum(a => a.SoLuong)
                             }
                        );
            var reportBookQuery = (from a in querySach1
                      join b in querySach2 on a.MaSach equals b.MaSach into check
                      from x in check.DefaultIfEmpty()
                      select new
                      {
                          TenSach = a.TenSach,
                          TonCuoi = a.TonCuoi,
                          TonDau = (x == null ? 0 : x.TonDau),
                          PhatSinh =(x==null ? a.TonCuoi : a.TonCuoi - x.TonDau )
                      }).ToList();
            reportbook.ItemsSource = reportBookQuery;
        }
    }
}
