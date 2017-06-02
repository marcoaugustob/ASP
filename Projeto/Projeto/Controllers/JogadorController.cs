using Projeto.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Controllers
{
    public class JogadorController
    {
        BaseDadosContainer ctx = new BaseDadosContainer();
        public void Adicionar(Jogador jogad)
        {
            ctx.JogadorSet.Add(jogad);
            ctx.SaveChanges();

        }

        public List<Jogador> Listar()
        {
            try
            {
                return ctx.JogadorSet.ToList();

            }
            catch (Exception)
            {

                throw;
            }
        }

        public Jogador LocaliazarPorId(int id)
        {
            return ctx.JogadorSet.Find(id);
        }

        public void Editar(Jogador jogador)
        {
            ctx.Entry(jogador).State = System.Data.Entity.EntityState.Modified;
            ctx.SaveChanges();
        }

        public void Excluir(Jogador jogad)
        {
            ctx.Entry(jogad).State = System.Data.Entity.EntityState.Deleted;
            ctx.SaveChanges();
        }
        public Jogador BuscaIdJoga(string nome)
        {
            return ctx.JogadorSet.FirstOrDefault(p => p.Nome.Equals(nome));
        }
    }
}