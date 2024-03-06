using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {

                ddTrinhDo.Items.Add(new ListItem("Trung Cấp", "01"));
                ddTrinhDo.Items.Add(new ListItem("Cao Đẳng", "02"));
                ddTrinhDo.Items.Add(new ListItem("Đại Học", "03"));

                listNgheNghiep.Items.Add(new ListItem("Kỹ Sư", "01"));
                listNgheNghiep.Items.Add(new ListItem("Bác Sĩ", "02"));
                listNgheNghiep.Items.Add(new ListItem("Công Nhân", "03"));

                cblSoThich.Items.Add(new ListItem(" Video Game", "01"));
                cblSoThich.Items.Add(new ListItem(" Music", "02"));
                cblSoThich.Items.Add(new ListItem(" Flims", "03"));
                cblSoThich.Items.Add(new ListItem(" Dance", "04"));
            }

        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            string kq = "";
            kq += "<h2> KẾT QUẢ ĐĂNG KÝ </h2>";
            kq += "<ul class='text-left'>";
            kq += $"<li> Họ tên: {txtHoTen.Text} </li>";
            kq += $"<li> Ngày sinh: {txtNgaySinh.Text} </li>";
            if (radNam.Checked) { 
                kq += $"<li>Giới tính: Nam </li>";
            }
            else
            {
                kq += $"<li>Giới tính: Nữ </li>";
            }
            kq += $"<li> Trình độ: {ddTrinhDo.SelectedItem.Text} </li>";
            kq += $"<li> Nghề nghiệp: {listNgheNghiep.SelectedItem.Text} </li>";
            if (fHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads");
                string linkImg = path +"/"+ fHinh.FileName;
                fHinh.SaveAs(linkImg);
                kq += $"<li>Ảnh: <img src='Uploads/{fHinh.FileName}'></li>";
            }
            kq += "<li>Sở thích: ";
            int i = 0;
            foreach (ListItem item in cblSoThich.Items)
            {
                i++;
                if (item.Selected)
                {
                    kq += $"{item.Text}";
                    if (cblSoThich.Items.Count != i)
                    {
                        kq += ", ";
                    }
                }               
            }
            kq += "</li>";
            kq += "</ul>";

            lbKetQua.Text = kq;
        }
    }
}