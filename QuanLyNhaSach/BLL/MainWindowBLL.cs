using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyKho.BLL
{
    class MainWindowBLL
    {
        //private QuanLyKho.QuanLyNhaSachEntities db = new QuanLyKho.QuanLyNhaSachEntities();
        public List<QuanLyKho.Sach> getBooks ()
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var dataBookList = db.Saches.Where(s => s.BiXoa == false).ToList();
            return dataBookList;
        }

        public List<QuanLyKho.Sach> searhBooks(String keyword)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            return db.Saches.Where(s => (s.TenSach.Contains(keyword) || s.TenTheLoai.Contains(keyword) ) && s.BiXoa == false).ToList();
        }
    }
}
