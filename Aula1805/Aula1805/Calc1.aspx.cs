using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula1805
{
    public partial class Calc1 : System.Web.UI.Page
    {
        int resultado;
        int v1;
        int v2;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMais_Click(object sender, EventArgs e)
        {
            v1 = Convert.ToInt32(txtN1.Text);
            v2 = Convert.ToInt32(txtN2.Text);
            resultado = v1 + v2;
            txtR.Text = resultado.ToString();
        }

        protected void btnR_Click(object sender, EventArgs e)
        {
            v1 = Convert.ToInt32(txtN1.Text);
            v2 = Convert.ToInt32(txtN2.Text);
            Session.Add("v1", v1.ToString());
            Session.Add("v2", v2.ToString());
            Response.Redirect("Calc2.aspx");        }
    }
}