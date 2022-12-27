using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyKho.BLL
{
    class RuleBLL
    {
        public void UpdateRule(string slnhaptoithieu,string sltontoithieu,string notoida,string tonsaukhiban,bool sotienthu)
        {
            var db = new QuanLyKho.QuanLyNhaSachEntities();
            var quydinh = db.QuyDinhs.FirstOrDefault();
            quydinh.SoLuongSachNhapToiThieuDeNhap = int.Parse(slnhaptoithieu);
            quydinh.SoLuongSachTonToiThieuDeNhap = int.Parse(sltontoithieu);
            quydinh.TienToiDa = int.Parse(notoida);
            quydinh.SoLuongSachTonToiThieuSauKhiBan = int.Parse(tonsaukhiban);
            quydinh.TienThuLonHonNo = sotienthu;
            db.SaveChanges();
        }

    }
}
