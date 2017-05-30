using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto.Views
{
    public partial class CadastroPosicao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            txtDesc.Text = string.Empty;
        }
    }
}