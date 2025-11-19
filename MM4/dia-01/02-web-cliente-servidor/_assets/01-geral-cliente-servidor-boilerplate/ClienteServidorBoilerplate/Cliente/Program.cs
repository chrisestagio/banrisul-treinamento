using System;
using System.Threading;

namespace Cliente
{
    public class Program
    {
        private const string PROTOCOLO = "http";
        private const string DOMINIO = "localhost";
        private const int PORTA = 3088;

        public static void Main(string[] args)
        {
            Console.WriteLine("::::::::::::::::::");
            Console.WriteLine($":::: {ClienteHttp.IDENTIFICADOR} :::::");
            Console.WriteLine("::::::::::::::::::\n");

            

            // TODO: Uso do objeto ClienteHttp para efetuar requisições para o servidor
            var cliente = new ClienteHttp();
            Console.ReadKey();

            var respostaGet = cliente.EnviarGet(ObterCaminho());


            // TODO: [Instância de ClienteHttp].Encerrar();
            Console.WriteLine("Pressione ENTER para encerrar...\n");
            Console.ReadKey();
            cliente.Encerrar();

        }

        private static string ObterCaminho()
        {
            return $"{PROTOCOLO}://{DOMINIO}:{PORTA}/";
        }
    }
}
