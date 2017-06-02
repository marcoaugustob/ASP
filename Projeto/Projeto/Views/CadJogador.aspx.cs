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
            PosicaoController posi = new PosicaoController();
            foreach (var item in posi.Listar())
            {
                lista.Items.Add(item.Funcao);
            }
        }
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {

                JogadorController ctrl = new JogadorController();
                PosicaoController ctrl2 = new PosicaoController();
                Jogador joga = new Jogador();
                joga.Nome = txtNome.Text;
                joga.Posicao = ctrl2.BuscaIdPosi(lista.Text);
                joga.Time = txtTime.Text;
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
            lista.Text= string.Empty;
            txtTime.Text = string.Empty;
        }
    }
}