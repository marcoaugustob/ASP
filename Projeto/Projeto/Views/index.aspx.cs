using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto.Views
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarPosição_Click(object sender, EventArgs e)
        {
            CadastroPosicao cadPosi = new CadastroPosicao();
            //Form.InnerHtml= cadPosi;
        }


        protected void btnCadastrarJogador_Click(object sender, EventArgs e)
        {
            //Form.Load
        }

        protected void btnListar_Click(object sender, EventArgs e)
        {

        }
    }
}