using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class TinhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private int LaySo1()
        {
            int so1 = 0;
            if (txtSo1.Text == "")
            {
                lblThongBao1.Text = "Chưa nhập số thứ nhất";
            }
            else
            {
                lblThongBao1.Text = "";
                so1 = Int32.Parse(txtSo1.Text);
            }
            return so1;
        }
        private int LaySo2()
        {
            int so2 = 0;
            if (txtSo1.Text == "")
            {
                lblThongBao2.Text = "Chưa nhập số thứ hai";
            }
            else
            {
                lblThongBao2.Text = "";
                so2 = Int32.Parse(txtSo2.Text);
            }
            return so2;
        }
        protected void btnCong_Click(object sender, EventArgs e)
        {        
            int kq = LaySo1() + LaySo2();
            txtKetQua.Text = kq.ToString();
        }

        protected void btnTru_Click(object sender, EventArgs e)
        {
            int kq = LaySo1() - LaySo2();
            txtKetQua.Text = kq.ToString();
        }

        protected void btnNhan_Click(object sender, EventArgs e)
        {
            int kq = LaySo1() * LaySo2();
            txtKetQua.Text = kq.ToString();
        }

        protected void btnChia_Click(object sender, EventArgs e)
        {
            float kq = (float)LaySo1()/(float)LaySo2();
            txtKetQua.Text = kq.ToString();
        }
    }
}