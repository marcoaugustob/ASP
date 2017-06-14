using Projeto.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto.Controllers
{
    public class PosicaoController
    {
        BaseDadosContainer ctx = new BaseDadosContainer();
        public void Adicionar(Posicao pos)
        {
            ctx.PosicaoSet.Add(pos);
            ctx.SaveChanges();

        }

        public List<Posicao> Listar()
        {
            return ctx.PosicaoSet.ToList();
        }

        public Posicao LocaliazarPorId(int id)
        {
            return ctx.PosicaoSet.Find(id);
        }

        public void Editar(Posicao pos)
        {
            ctx.Entry(pos).State = System.Data.Entity.EntityState.Modified;
            ctx.SaveChanges();
        }

        public void Excluir(Posicao pos)
        {
            ctx.Entry(pos).State = System.Data.Entity.EntityState.Deleted;
            ctx.SaveChanges();
        }
        public Posicao BuscaIdPosi(int funcaoid)
        {
            return ctx.PosicaoSet.FirstOrDefault(p => p.Id == funcaoid);
        }
    }
}