using System;

namespace FinanciamentoConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            // Declara as variaves.
            decimal valCred; decimal perc; string tpCred; int qtdParc; DateTime dtVenc; DateTime vencMin; DateTime vencMax;

            // Pergunta ao usuario para escolher uma opção de credito.
            Console.WriteLine("Escolha uma opcao de credito da seguinte lista abaixo:");
            Console.WriteLine("\tCD - Credito Direto");
            Console.WriteLine("\tCC - Credito Consigado");
            Console.WriteLine("\tCPJ - Credito Pessoa Juridica");
            Console.WriteLine("\tCPF - Credito Pessoa Fisica");
            Console.WriteLine("\tCI - Credito Imobiliario");
            Console.Write("Sua Escolha? \n");
            tpCred = Convert.ToString(Console.ReadLine());
            Console.Write("\n");

            // Inserindo as datas para calculo do vencimento
            vencMin = DateTime.Now.AddDays(15);
            vencMax = DateTime.Now.AddDays(40);

            // Usando a estrutura switch para trabalhar as opcoes de credito.
            switch (tpCred)
            {
                case "CD":
                case "cd":
                    Console.WriteLine("Você escolheu Credito Direto \n");
                    Console.WriteLine("Insira o Valor do Credito");
                    valCred = Convert.ToDecimal(Console.ReadLine());
                    Console.WriteLine("Insira a Quantidade de Parcelas");
                    qtdParc = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Insira a Data do primeiro vencimento");
                    dtVenc = Convert.ToDateTime(Console.ReadLine());

                    if (valCred > 1000000)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: O valor máximo a ser liberado para qualquer tipo de emprestimo é de R$1.000.000,00");
                    }
                    else if (qtdParc < 5 || qtdParc > 72)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: A quantidade de parcelas minima é de 5x e maxima é de 72x");
                    }
                    else if (dtVenc.Day < vencMin.Day && dtVenc.Day > vencMax.Day)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: A data do primeiro vencimento sempre será no minimo D+15 e no maximo D+40");
                    }
                    else
                    {
                        perc = 2;
                        var juros = valCred * (perc / 100);
                        var result = valCred + juros;
                        Console.ForegroundColor = ConsoleColor.Green;
                        Console.WriteLine("Status do Credito: Aprovado");
                        Console.WriteLine("Valor total com juros: " + result);
                        Console.WriteLine("Valor do juros: " + juros);
                    }

                    break;
                case "CC":
                case "cc":
                    Console.WriteLine("Você escolheu Credito Consignado \n");
                    Console.WriteLine("Insira o Valor do Credito");
                    valCred = Convert.ToDecimal(Console.ReadLine());
                    Console.WriteLine("Insira a Quantidade de Parcelas");
                    qtdParc = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Insira a Data do primeiro vencimento");
                    dtVenc = Convert.ToDateTime(Console.ReadLine());

                    if (valCred > 1000000)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: O valor máximo a ser liberado para qualquer tipo de emprestimo é de R$1.000.000,00");
                    }
                    else if (qtdParc < 5 || qtdParc > 72)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: A quantidade de parcelas minima é de 5x e maxima é de 72x");
                    }
                    else if (dtVenc.Day < vencMin.Day && dtVenc.Day > vencMax.Day)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: A data do primeiro vencimento sempre será no minimo D+15 e no maximo D+40");
                    }
                    else
                    {
                        perc = 1;
                        var juros = valCred * (perc / 100);
                        var result = valCred + juros;
                        Console.ForegroundColor = ConsoleColor.Green;
                        Console.WriteLine("Status do Credito: Aprovado");
                        Console.WriteLine("Valor total com juros: " + result);
                        Console.WriteLine("Valor do juros: " + juros);
                    }
                    break;
                case "CPJ":
                case "cpj":
                    Console.WriteLine("Você escolheu Credito Pessoa Juridica \n");
                    Console.WriteLine("Insira o Valor do Credito");
                    valCred = Convert.ToDecimal(Console.ReadLine());
                    Console.WriteLine("Insira a Quantidade de Parcelas");
                    qtdParc = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Insira a Data do primeiro vencimento");
                    dtVenc = Convert.ToDateTime(Console.ReadLine());

                    if (valCred < 15000)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: Para o Credito Pessoa Juridica o valor minimo a ser liberado é de R$15.000,00");
                    }
                    else if (qtdParc < 5 || qtdParc > 72)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: A quantidade de parcelas minima é de 5x e maxima é de 72x");
                    }
                    else if (dtVenc.Day < vencMin.Day && dtVenc.Day > vencMax.Day)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: A data do primeiro vencimento sempre será no minimo D+15 e no maximo D+40");
                    }
                    else
                    {
                        perc = 5;
                        var juros = valCred * (perc / 100);
                        var result = valCred + juros;
                        Console.ForegroundColor = ConsoleColor.Green;
                        Console.WriteLine("Status do Credito: Aprovado");
                        Console.WriteLine("Valor total com juros: " + result);
                        Console.WriteLine("Valor do juros: " + juros);
                    }
                    break;
                case "CPF":
                case "cpf":
                    Console.WriteLine("Você escolheu Credito Pessoa Fisica \n");
                    Console.WriteLine("Insira o Valor do Credito");
                    valCred = Convert.ToDecimal(Console.ReadLine());
                    Console.WriteLine("Insira a Quantidade de Parcelas");
                    qtdParc = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Insira a Data do primeiro vencimento");
                    dtVenc = Convert.ToDateTime(Console.ReadLine());

                    if (valCred > 1000000)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: O valor máximo a ser liberado para qualquer tipo de emprestimo é de R$1.000.000,00");
                    }
                    else if (qtdParc < 5 || qtdParc > 72)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: A quantidade de parcelas minima é de 5x e maxima é de 72x");
                    }
                    else if (dtVenc.Day < vencMin.Day && dtVenc.Day > vencMax.Day)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: A data do primeiro vencimento sempre será no minimo D+15 e no maximo D+40");
                    }
                    else
                    {
                        perc = 3;
                        var juros = valCred * (perc / 100);
                        var result = valCred + juros;
                        Console.ForegroundColor = ConsoleColor.Green;
                        Console.WriteLine("Status do Credito: Aprovado");
                        Console.WriteLine("Valor total com juros: " + result);
                        Console.WriteLine("Valor do juros: " + juros);
                    }
                    break;
                case "CI":
                case "ci":
                    Console.WriteLine("Você escolheu Credito Imobiliario \n");
                    Console.WriteLine("Insira o Valor do Credito");
                    valCred = Convert.ToDecimal(Console.ReadLine());
                    Console.WriteLine("Insira a Quantidade de Parcelas");
                    qtdParc = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Insira a Data do primeiro vencimento");
                    dtVenc = Convert.ToDateTime(Console.ReadLine());

                    if (valCred > 1000000)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: O valor máximo a ser liberado para qualquer tipo de emprestimo é de R$1.000.000,00");
                    }
                    else if (qtdParc < 5 || qtdParc > 72)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: A quantidade de parcelas minima é de 5x e maxima é de 72x");
                    }
                    else if (dtVenc.Day < vencMin.Day && dtVenc.Day > vencMax.Day)
                    {
                        Console.ForegroundColor = ConsoleColor.Red;
                        Console.WriteLine("Status do Credito: Recusado. Motivo: A data do primeiro vencimento sempre será no minimo D+15 e no maximo D+40");
                    }
                    else
                    {
                        perc = 9;
                        var juros = valCred * (perc / 100);
                        var result = valCred + juros;
                        Console.ForegroundColor = ConsoleColor.Green;
                        Console.WriteLine("Status do Credito: Aprovado");
                        Console.WriteLine("Valor total com juros: " + result);
                        Console.WriteLine("Valor do juros: " + juros);
                    }
                    break;
                default:
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.WriteLine("Opcao de credito invalido. Tente novamente.");
                    break;
            }
            // Aguarda o usuário responder antes de fechar.
            Console.Write("Aperte qualquer botão para fechar o Financiamento Console App...");
            Console.ReadKey();
        }
    }
}
