using Aula2505.Controllers;
using Aula2505.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula2505.Views.Categorias
{
    public partial class CadastroCategorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            CategoriasController ctrl = new CategoriasController();
            Categoria categoria = new Categoria();
            categoria.Nome = txtNome.Text;
            categoria.Descricao = txtDesc.Text;
            ctrl.Adicionar(categoria);
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            txtDesc.Text = string.Empty;
            chkAtivo.Checked = false;
        }
    }
}