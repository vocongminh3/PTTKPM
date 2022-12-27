using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyKho.BLL
{
    class LoginBLL
    {
        public String checkUser (String username , String password)
        {

            var db = new QuanLyKho.QuanLyNhaSachEntities();

            var user = db.NguoiDungs.Find(username);
            if (user != null)
            {
                if (user.tendangnhap == username && user.matkhau == password && user.loai == true)
                {
                    return "admin";
                }
                else if (user.tendangnhap == username && user.matkhau == password && user.loai == false)
                {
                    return "staff";
                }
                else
                {
                    return "";
                }
            }
            return "";
        }

    }
}
