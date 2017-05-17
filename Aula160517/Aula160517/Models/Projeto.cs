﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aula160517.Models
{
    public class Projeto
    {   //[Key]
        public int ProjetoID
        {
            get;
            set;
        }
        //[Required]
        public string Nome
        {
            get;
            set;
        }
        //[Display (Name ="Descrição")]
        public string Descricao
        {
            get;
            set;
        }

        public bool Ativo
        {
            get;
            set;
        }

    }
}