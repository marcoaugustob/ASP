using Projeto.Controllers;
using Projeto.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto.Views
{
    public partial class CadJogador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
   
        }
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            JogadorController ctrl = new JogadorController();
            PosicaoController ctrl2 = new PosicaoController();
            Jogador joga = new Jogador();
            joga.Nome = txtNome.Text;
            joga.PosicaoId = Convert.ToInt32(txtIdPosi.Text);
            joga.Time = txtTime.Text;
            try
            {
                ctrl.Adicionar(joga);
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnCadastrarLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            txtIdPosi.Text= string.Empty;
            txtTime.Text = string.Empty;
        }
    }
}