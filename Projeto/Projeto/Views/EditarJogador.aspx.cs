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
    public partial class EditarJogador : System.Web.UI.Page
    {
        Jogador jogador = new Jogador();
        JogadorController jCtrl = new JogadorController();

        protected void Page_Load(object sender, EventArgs e)
        {    

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            jogador = jCtrl.BuscaIdJoga(txtNomeJogador.Text);
            txtNome.Text = jogador.Nome.ToString();
            txtTime.Text = jogador.Time.ToString();
            txtidPosi.Text = jogador.Posicao.Id.ToString();
            ViewState.Add("IdJog", jogador.Id);
        }

        protected void btnEdita_Click(object sender, EventArgs e)
        {
            try
            {
                jogador.Nome = txtNome.Text;
                jogador.Time = txtTime.Text;
                jogador.Posicao.Funcao = txtidPosi.Text;
                jogador.Id =  Convert.ToInt32(ViewState["IdJog"].ToString());
                jCtrl.Editar(jogador);
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnCancela_Click(object sender, EventArgs e)
        {
            JogadorController joga = new JogadorController();
            Jogador jogadASerExcluida = new Jogador();
            jogadASerExcluida = joga.BuscaIdJoga(txtNomeJogador.Text);
            try
            {
                joga.Excluir(jogadASerExcluida);
            }
            catch (Exception)
            {
                throw;
            }

        }
    }
}