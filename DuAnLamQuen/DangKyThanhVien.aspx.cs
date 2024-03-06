using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Khởi tạo DropDownList Ngày, Tháng, Năm ban đầu
                for (int i = 1; i <= 31; i++)
                {
                    ddlNgay.Items.Add(new ListItem(i.ToString()));
                }
                for (int i = 1; i <= 12; i++)
                {
                    ddlThang.Items.Add(new ListItem(i.ToString()));
                }
                for (int i = 1950; i <= 2010; i++)
                {
                    ddlNam.Items.Add(new ListItem(i.ToString()));
                }
            }
        }
        protected void ddlThang_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Xác định số ngày trong tháng được chọn
            int selectedMonth = Convert.ToInt32(ddlThang.SelectedItem.Value);
            int selectedYear = Convert.ToInt32(ddlNam.SelectedItem.Value);
            int daysInMonth = DateTime.DaysInMonth(selectedYear, selectedMonth);

            // Xóa các mục cũ trong DropdownList ngày
            ddlNgay.Items.Clear();

            // Thêm lại các mục mới cho DropdownList ngày
            for (int i = 1; i <= daysInMonth; i++)
            {
                ddlNgay.Items.Add(new ListItem(i.ToString()));
            }
        }
            protected void btnGui_Click(object sender, EventArgs e)
            {
                string kq = "";

                kq += "<ul class='text-left'>";

                kq += $"<li> Tên đăng nhập: <i>{txtTenDangNhap.Text}<i> </li>";
                if (txtMK.Text == txtRMK.Text)
                {
                    kq += $"<li> Mật khẩu: <i>{txtMK.Text}<i> </li>";
                }
                kq += $"<li> Họ tên: {txtHoTen.Text} </li>";
                kq += $"<li> Ngày sinh: {ddlNgay.SelectedItem.Text}/{ddlThang.SelectedItem.Text}/{ddlNam.SelectedItem.Text} </li>";

                if (ckbGT.Checked)
                {
                    kq += $"<li>Giới tính: Nam </li>";
                }
                else
                {
                    kq += $"<li>Giới tính: Nữ </li>";
                }

                kq += $"<li> Địa chỉ: {txtDiaChi.Text} </li>";
                kq += $"<li> Điện thoại: {txtDienThoai.Text} </li>";

                kq += "</ul>";

                // Gán nội dung kq vào divKetQua và áp dụng CSS
                divKetQua.InnerHtml = kq;
                divKetQua.Attributes["class"] = "text-small";
            }


        }
    }