using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyKho.BLL
{
    class BillBLL
    {

        public void AddBill(int makhachhang,DateTime selectedDate,int gia,int soluong,int masach)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var bill = new QuanLyKho.HoaDon();
            var detailBill = new QuanLyKho.ChiTietHoaDon();
            var book = db.Saches.Find(masach);
            bill.MaKhachHang = makhachhang;
            bill.NgayLapHoaDon = selectedDate;
            bill.BiXoa = false;

            db.HoaDons.Add(bill);

            detailBill.DonGia = gia;
            detailBill.SoLuongMua = soluong;
            detailBill.MaHoaDon = bill.MaHoaDon;
            detailBill.MaSach = masach;

            db.ChiTietHoaDons.Add(detailBill);

            //tru so luong sach
            book.SoLuong -= soluong;
            // tru tien khach hang
            var customer = db.KhachHangs.Find(makhachhang);
            customer.Tien -= soluong * gia;


            db.SaveChanges();
        }

        public void UpdateBill (int mahoadon,DateTime date,int soluong,int gia)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var billSelected = db.HoaDons.Find(mahoadon);
            //var detailBill = db.ChiTietHoaDons.Where(s => s.MaHoaDon == billSelected.MaHoaDon).FirstOrDefault();
            var detailBill = db.ChiTietHoaDons.Single(s => s.MaHoaDon == billSelected.MaHoaDon);
            //var newDetailBill = new QuanLyKho.ChiTietHoaDon();
            billSelected.NgayLapHoaDon = date;
            //billSelected.MaKhachHang = makhachhang;

            //newDetailBill.MaHoaDon = billSelected.MaHoaDon;
            //newDetailBill.SoLuongMua = soluong;
            //newDetailBill.DonGia = gia;
            //newDetailBill.MaSach = masach;
            
            var book = db.Saches.Find(detailBill.MaSach);
            book.SoLuong = book.SoLuong + detailBill.SoLuongMua - soluong;



            var customer = db.KhachHangs.Find(billSelected.MaKhachHang);
            customer.Tien = customer.Tien + ((detailBill.SoLuongMua * detailBill.DonGia) -   (soluong * gia));


            detailBill.SoLuongMua = soluong;
            detailBill.DonGia = gia;
            


            //db.ChiTietHoaDons.Remove(detailBill);
            //db.ChiTietHoaDons.Add(newDetailBill);
            db.SaveChanges();
        }

        public void DeleteBill(int mahoadon)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var billSelected = db.HoaDons.Find(mahoadon);

            var detailBill = db.ChiTietHoaDons.Single(s => s.MaHoaDon == billSelected.MaHoaDon);

            var book = db.Saches.Find(detailBill.MaSach);
            book.SoLuong = book.SoLuong + detailBill.SoLuongMua ;

            var customer = db.KhachHangs.Find(billSelected.MaKhachHang);
            customer.Tien = customer.Tien + (detailBill.SoLuongMua * detailBill.DonGia);

            billSelected.BiXoa = true;
            db.SaveChanges();
        }
    }
}
