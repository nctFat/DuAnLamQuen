using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuAnLamQuen
{
    public partial class Hello : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            string hoTen = txtHoTen.Text;
            lblNoiDung.Text = "Chào " + hoTen + " đến với ASP.NET";
        }
    }
}