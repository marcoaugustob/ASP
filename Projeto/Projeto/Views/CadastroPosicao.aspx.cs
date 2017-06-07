﻿using Projeto.Controllers;
using Projeto.Models;
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
        PosicaoController ctrl = new PosicaoController();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Posicao pos = new Posicao();
            pos.Funcao = txtPosi.Value;
            pos.DescTati = txtDesc.Text;
            try
            {

          
                ctrl.Adicionar(pos);

            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnCadastrarLimpar_Click(object sender, EventArgs e)
        {
            txtPosi.Value = string.Empty;
            txtDesc.Text = string.Empty;
        }

        protected void btnBuscarPosi_Click(object sender, EventArgs e)
        {
            try
            {

                Posicao posicao = new Posicao();
                posicao = ctrl.BuscaIdPosi(txtBuscaPosicao.Text);
                txtPosi.Value = posicao.Funcao.ToString();
                txtDesc.Text = posicao.DescTati.ToString();
                posicao = (Posicao)Session["Posicao"];

            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Posicao posi = new Posicao();
            posi.Funcao = txtPosi.Value;
            posi.DescTati = txtDesc.Text;

            try
            {

             
                ctrl.Editar(posi);

            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            PosicaoController posicao = new PosicaoController();
            Posicao PosICaoParaSerExcluida = new Posicao();
            PosICaoParaSerExcluida = posicao.BuscaIdPosi(txtBuscaPosicao.Text);
            try
            {
                posicao.Excluir(PosICaoParaSerExcluida);
            }
            catch (Exception)
            {
                throw;
            }

        }
    }
}