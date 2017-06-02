using Projeto.Controllers;
using Projeto.Models;
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
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Jogador joga = new Jogador();
            JogadorController jCtrl = new JogadorController();
            joga = jCtrl.BuscaIdJoga(txtNomeJogador.Text);
            Session.Add("objJogado", joga);
            Response.Redirect("~/EditarJogador.aspx");
        }
    }
}