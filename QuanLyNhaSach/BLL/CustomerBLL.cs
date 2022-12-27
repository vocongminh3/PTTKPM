using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyKho.BLL
{
    class CustomerBLL
    {
        public void AddCustomer (string name,string adress,string numberphone,string email)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var customer = new QuanLyKho.KhachHang();
            customer.TenKhachHang = name;
            customer.DiaChi = adress;
            customer.DienThoai = numberphone;
            customer.Email = email;
            customer.Tien = 0;
            customer.BiXoa = false;
            db.KhachHangs.Add(customer);
            db.SaveChanges();
        }

        public void UpdateCustomer(int makhachhang,string name, string adress, string numberphone, string email)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var selectedCustomer = db.KhachHangs.Find(makhachhang);
            selectedCustomer.TenKhachHang = name;
            selectedCustomer.DiaChi = adress;
            selectedCustomer.DienThoai = numberphone;
            selectedCustomer.Email = email;
            db.SaveChanges();
        }

        public void DeleteCustomer (int makhachhang)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var selectedCustomer = db.KhachHangs.Find(makhachhang);
            //db.KhachHangs.Remove(selectedCustomer);
            selectedCustomer.BiXoa = true;
            db.SaveChanges();
        }
    }

}
