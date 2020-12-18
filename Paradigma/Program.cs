using System;
using System.Collections.Generic;
using System.Linq;

namespace Paradigma
{
    class Program
    {
        static void Main(string[] args)
        {

            int[] valor = { 3, 2, 1, 6, 0, 5 };  
            PrintInfosArray(valor);

            int[] valor2 = { 7, 5, 13, 9, 1, 6, 4 };
            PrintInfosArray(valor2);

        }

        private static void PrintInfosArray(int[] valor)
        {
            var _valor = valor.ToList();

            var centro = _valor.Max();
            var indexCentro = _valor.IndexOf(centro);

            List<int> esquerda = GetRangeOrdenado(_valor, 0, indexCentro);

            int posicaoInicialRamoDireito = indexCentro + 1;
            int posicaoFinalRamoDireto = _valor.Count() - (indexCentro + 1);

            List<int> direita = GetRangeOrdenado(_valor, posicaoInicialRamoDireito, posicaoFinalRamoDireto);

            Console.Write("Array de entrada: ");
            PrintaLinha(_valor);

            Console.Write("Raiz: ");
            Console.WriteLine(centro);

            Console.Write("Galhos da esquerda: ");
            PrintaLinha(esquerda);

            Console.Write("Galhos da direita: ");
            PrintaLinha(direita);

            Console.WriteLine("=================");
        }

        private static List<int> GetRangeOrdenado(List<int> source, int inicio, int final)
        {
            return source.GetRange(inicio, final).OrderByDescending(x => x).ToList();
        }

        private static void PrintaLinha(List<int> listaParaPrint)
        {

            for (int i = 0; i < listaParaPrint.Count(); i++)
            {
                var item = listaParaPrint[i];

                if(i == listaParaPrint.Count() -1)
                {
                    Console.WriteLine(item.ToString());

                }
                else
                {
                    Console.Write(item.ToString() + ", ");
                }

            }
        }
    }
}
