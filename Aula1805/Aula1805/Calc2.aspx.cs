using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula1805
{
    public partial class Calc2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int v1, v2;
            txtV1M.Text = ( Session["v1"]).ToString();
            txtV2M.Text = (Session["v2"]).ToString();
            v1 = Convert.ToInt32(txtV1M.Text);
            v2 = Convert.ToInt32(txtV2M.Text);
            txtR1.Text = (v1 + v2).ToString();

            txtV1Me.Text = (Session["v1"]).ToString();
            txtV2Me.Text = (Session["v2"]).ToString();
            txtR2.Text = (v1 - v2).ToString();

            txtV1V.Text = (Session["v1"]).ToString();
            txtV2V.Text = (Session["v2"]).ToString();
            txtR3.Text = (v1 * v2).ToString();

            txtV1D.Text = (Session["v1"]).ToString();
            txtV2D.Text = (Session["v2"]).ToString();
            txtR4.Text = (v1 / v2).ToString();
        }

    }
}