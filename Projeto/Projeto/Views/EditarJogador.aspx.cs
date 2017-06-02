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
            PosicaoController posi = new PosicaoController();
            foreach (var item in posi.Listar())
            {
                lista.Items.Add(item.Funcao);
            }
            jogador = (Jogador)Session["Jogado"];

            txtNome.Text = jogador.Nome.ToString();
            txtTime.Text = jogador.Time.ToString();
            lista.Text = jogador.Posicao.ToString();

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {

                jogador = new Jogador();
                jogador = jCtrl.BuscaIdJoga(txtNomeJogador.Text);
                txtNome.Text = jogador.Nome.ToString();
                txtTime.Text = jogador.Time.ToString();
                lista.Text = jogador.Posicao.ToString();
                jogador = (Jogador)Session["Jogado"];
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnEdita_Click(object sender, EventArgs e)
        {
            try
            {

                jogador = new Jogador();
                jogador.Nome = txtNome.Text;
                jogador.Time = txtTime.Text;
                jogador.Posicao.Funcao = lista.Text;

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