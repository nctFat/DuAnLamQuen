using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlBanh.Items.Add(new ListItem("Bánh Bao", "01"));
                ddlBanh.Items.Add(new ListItem("Hủ tiếu", "02"));
                ddlBanh.Items.Add(new ListItem("Cơm tấm", "03"));
                ddlBanh.Items.Add(new ListItem("Bánh xèo", "04"));
            }
        }

        protected void ddlBanh_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btChuyen_Click(object sender, EventArgs e)
        {
            int i = 0;
            int k;
            string item = ddlBanh.SelectedItem.Text;
            int soLuongCu = 0;
            foreach(ListItem items in listBanh.Items)
            {
                int vt = items.Text.IndexOf(" (");
                string ten = items.Text.Substring(0, vt);
                if(ten == item)
                {
                    k = i;
                    soLuongCu =int.Parse(items.Value); 
                    listBanh.Items.RemoveAt(k);
                    break;
                }
                i++;
            }
            int soLuong = int.Parse(txtSoLuong.Text);
            int tongSo = soLuong + soLuongCu;
            string thongtin = item + " (" + tongSo + ")";
            
            listBanh.Items.Add(new ListItem(thongtin, tongSo.ToString()));

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            for( int i= listBanh.Items.Count - 1; i >= 0; i--)
            {
                if (listBanh.Items[i].Selected)
                {
                    listBanh.Items.RemoveAt(i);
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string kq = "<h1>HOÁ ĐƠN ĐẶT HÀNG</h1>";
            kq += $"<b>Khách hàng: </b> {txtHoTen.Text}<br/>";
            kq += $"<b>Địa chỉ: </b> {txtDiaChi.Text}<br/>";
            kq += $"<b>Mã số thuế: </b> {txtMSThue.Text}<br/><br/>";
            kq += "<b>Đặt các loại bánh sau:</b>";
            kq += "<table class='table table-bordered text-danger'>";
            int i = 0;
            foreach (ListItem item in listBanh.Items)
            {
                i++;
                int vt = item.Text.IndexOf(" (");
                string ten = item.Text.Substring(0, vt);
                kq += $"<tr> <td>{ten}</td> <td>{item.Value}</td> </tr>";             
            }
            kq += "</table>";

            lbDonDatHang.Text = kq;
        }
    }
}