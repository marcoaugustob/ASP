using Projeto.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto.Views
{
    public partial class ListaPosi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           PosicaoController ctrl = new PosicaoController();
            gvPosicoes.DataSource = ctrl.Listar();
            gvPosicoes.DataBind();
        }
    }
}