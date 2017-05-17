using Aula160517.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula160517
{
    public partial class MeuPrimeiroForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Projeto p = new Projeto();
            p.Nome = txtNome.Text;
            p.Descricao = txtDescricao.Text;
            p.Ativo = chkAtivo.Checked;
            if (ViewState["controle"] == null)
            {
                ViewState.Add("controle", 1);
            }
            else
            {
                int qtdClique = (int)ViewState["controle"];
                qtdClique++;
                ViewState["controle"] = qtdClique;
            }
        }
        protected void btnCalcelar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            chkAtivo.Checked = false;
        }
    }
}