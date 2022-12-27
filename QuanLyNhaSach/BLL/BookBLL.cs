using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyKho.BLL
{
    class BookBLL
    {
        //private QuanLyKho.QuanLyNhaSachEntities db = new QuanLyKho.QuanLyNhaSachEntities();

        public void AddBook(string ten,string theloai,string tacgia,int soluong,DateTime ngaynhap)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities(); ;
            var book = db.Saches.Where(s => s.TenSach == ten && s.TenTheLoai == theloai && s.BiXoa == false).FirstOrDefault();
            var phieunhap = new QuanLyKho.PhieuNhap();
            int maSach = 0;
            if (book == null)
            {
                var newBook = new QuanLyKho.Sach();
                newBook.TenSach = ten;
                newBook.TenTheLoai = theloai;
                newBook.TacGia = tacgia;
                newBook.SoLuong = soluong;
                newBook.BiXoa = false;
                db.Saches.Add(newBook);
                phieunhap.MaSach = maSach;
                phieunhap.NgayNhap = ngaynhap;
                phieunhap.SoLuong = soluong;
                newBook.PhieuNhaps.Add(phieunhap);
                maSach = newBook.MaSach;
            }
            else
            {
                book.SoLuong += soluong;
                maSach = book.MaSach;
                phieunhap.MaSach = maSach;
                phieunhap.NgayNhap = ngaynhap;
                phieunhap.SoLuong = soluong;
                book.PhieuNhaps.Add(phieunhap);
            }

            phieunhap.MaSach = maSach;
            phieunhap.NgayNhap = ngaynhap;
            phieunhap.SoLuong = soluong;
            //db.PhieuNhaps.Add(phieunhap);
            db.SaveChanges();
            
        }

        public void UpdateBook (String selectInput,int soluong,DateTime ngaynhap)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var selectedInput = selectInput;
            int maPhieuNhap = Int32.Parse(selectedInput);
            var PhieuNhap = db.PhieuNhaps.Find(maPhieuNhap);
            var book = db.Saches.Find(PhieuNhap.MaSach);
            int oldQuantity = (int)PhieuNhap.SoLuong;
            PhieuNhap.SoLuong = soluong;
            PhieuNhap.NgayNhap = ngaynhap;
            book.SoLuong += PhieuNhap.SoLuong - oldQuantity;
            db.SaveChanges();
        }


        public void DeleteBook (String selectInput, int soluong, DateTime ngaynhap)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var selectedInput = selectInput;
            int maPhieuNhap = Int32.Parse(selectedInput);
            var PhieuNhap = db.PhieuNhaps.Find(maPhieuNhap);
            var book = db.Saches.Find(PhieuNhap.MaSach);
            PhieuNhap.SoLuong = soluong;
            PhieuNhap.NgayNhap = ngaynhap;
            book.SoLuong -= PhieuNhap.SoLuong;
            db.PhieuNhaps.Remove(PhieuNhap);
            db.SaveChanges();
        }
        public void AddInputBook ()
        {

        }
    }
}
