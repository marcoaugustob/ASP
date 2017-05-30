using Aula2505.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aula2505.Controllers
{
    public class CategoriasController
    {
        BaseDadosContainer ctx = new BaseDadosContainer();
        public void Adicionar(Categoria cat)
        {
            ctx.Categorias.Add(cat);
            ctx.SaveChanges();

        }

        public List<Categoria> Listar()
        {
            return ctx.Categorias.ToList();
        }

        public Categoria LocaliazarPorId(int id)
        {
            return ctx.Categorias.Find(id);
        }

        public void Editar(Categoria categoria)
        {
            ctx.Entry(categoria).State = System.Data.Entity.EntityState.Modified;
            ctx.SaveChanges();
        }

        public void Excluir(Categoria cate)
        {
            ctx.Entry(cate).State = System.Data.Entity.EntityState.Deleted;
            ctx.SaveChanges();
        }

    }
}