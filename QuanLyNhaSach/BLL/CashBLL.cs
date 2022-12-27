using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyKho.BLL
{
    class CashBLL
    {
        public void AddCash(int makhachhang,DateTime date,int tien)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var customer = db.KhachHangs.Find(makhachhang);
            var cash = new QuanLyKho.PhieuThuTien();
            cash.MaKhachHang = customer.MaKhachHang;
            cash.NgayThuTien = date;
            cash.SoTienThu = tien;

            //cap nhap so tien khach hang
            var changeCustomer = db.KhachHangs.Find(makhachhang);
            changeCustomer.Tien += tien;


            db.SaveChanges();

            db.PhieuThuTiens.Add(cash);
            db.SaveChanges();
        }

        public void UpdateCash(int maphieuthutien, int makhachhang,int tien,DateTime date)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var cash = db.PhieuThuTiens.Find(maphieuthutien);
            var customer = db.KhachHangs.Find(makhachhang);
            customer.Tien = customer.Tien + tien - cash.SoTienThu;
            cash.NgayThuTien = date;
            cash.SoTienThu = tien;
            cash.MaKhachHang = makhachhang;
            db.SaveChanges();
        }


        public void DeleteCash (int maphieuthutien)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            //Lấy mã khách hàng từ chuỗi chọn trên Listview
            var cash = db.PhieuThuTiens.Find(maphieuthutien);
            var customer = db.KhachHangs.Find(cash.MaKhachHang);
            customer.Tien -= cash.SoTienThu;
            db.PhieuThuTiens.Remove(cash);
            db.SaveChanges();
        }
    }
}
