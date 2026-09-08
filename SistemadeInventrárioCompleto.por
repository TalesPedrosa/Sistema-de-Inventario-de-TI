// Nomes: Tales Pedrosa, Alice Beatriz, Pablo Henrique, Cristian Moura, Ryan Lucas, Artur Rodrigues, Davi Guimarâes, Pedro Gomes, João Gustavo - Betim
// Projeto: Sistema de Inventário de TI

programa
{
    funcao inicio()
    {
        cadeia produtos[3] = {"Notebook", "Monitor", "Teclado"}
        inteiro estoque[3][2] = {
            {100, 50},
            {200, 75},
            {60, 150}
        }

        inteiro opcao = 0

        enquanto (opcao != 3)
        {
            escreva("\n===== SISTEMA DE ESTOQUE TI =====\n")
            escreva("1 - Relatório de estoque\n")
            escreva("2 - Registrar recebimento\n")
            escreva("3 - Encerrar\n")
            escreva("Opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    escreva("\n===== RELATÓRIO =====\n")

                    para (inteiro i = 0; i < 3; i++)
                    {
                        escreva("[", i, "] ", produtos[i])
                        escreva(" - Atual: ", estoque[i][0])
                        escreva(" | Mínimo: ", estoque[i][1], "\n")

                        se (estoque[i][0] < estoque[i][1])
                        {
                            escreva(" Estoque crítico!\n")
                        }
                    }
                    pare

                caso 2:
                    inteiro id
                    inteiro quantidade

                    escreva("\n===== RECEBIMENTO =====\n")
                    escreva("ID do equipamento (0, 1 ou 2): ")
                    leia(id)

                    se (id < 0 ou id > 2)
                    {
                        escreva(" ID inválido!\n")
                    }
                    senao
                    {
                        escreva("Quantidade recebida: ")
                        leia(quantidade)

                        se (quantidade <= 0)
                        {
                            escreva("Quantidade inválida!\n")
                        }
                        senao
                        {
                            estoque[id][0] = estoque[id][0] + quantidade

                            escreva(" Recebimento registrado!\n")
                            escreva("Produto: ", produtos[id], "\n")
                            escreva("Novo estoque: ", estoque[id][0], "\n")
                        }
                    }
                    pare

                caso 3:
                    escreva("\nEncerrando o sistema...\n")
                    pare

                caso contrario:
                    escreva("\n Opção inválida!\n")
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1580; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = vetor, matriz, funcao;
 */