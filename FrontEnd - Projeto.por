programa
{
    funcao inicio()
    {
        cadeia ProdutosTI[3] = {"Notebook", "Monitor", "Teclado"}

        inteiro matriz[3][2] = {
            {100, 50},
            {200, 75},
            {60, 150}
        }

        inteiro opcao = 0

        enquanto (opcao != 3)
        {
            escreva("\n========================================\n")
            escreva("1 - Emitir relatório de estoque\n")
            escreva("2 - Registrar recebimento de novos produtos\n")
            escreva("3 - Encerrar o programa\n")
            escreva("========================================\n")
            escreva("Digite uma opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    escreva("\nProdutos de TI disponíveis:\n")
                    escreva(ProdutosTI[0], ", ", ProdutosTI[1], ", ", ProdutosTI[2], "\n")
                    escreva("----------------------------------------\n")

                    escreva("Matriz de estoque atual e mínimo:\n")
                    para (inteiro i = 0; i < 3; i++)
                    {
                        escreva("[", matriz[i][0], ", ", matriz[i][1], "]\n")
                    }
                    escreva("----------------------------------------\n")

                    escreva("Estoque atual e mínimo de cada produto:\n")
                    escreva("Produto       Atual   Mínima\n")

                    para (inteiro i = 0; i < 3; i++)
                    {
                        escreva(ProdutosTI[i], "       ", matriz[i][0], "      ", matriz[i][1], "\n")
                    }
                    escreva("----------------------------------------\n")
                    pare

                caso 2:
                    inteiro id_produto = 0
                    inteiro quantidade = 0
                    inteiro quantidade_antes = 0
                    inteiro quantidade_apos = 0

                    escreva("\nRegistrar recebimento de novos produtos:\n")
                    escreva("Digite o ID do produto (0 - Notebook, 1 - Monitor, 2 - Teclado): ")
                    leia(id_produto)

                    se (id_produto >= 0 e id_produto <= 2)
                    {
                        escreva("Digite a quantidade de novos produtos recebidos: ")
                        leia(quantidade)

                        quantidade_antes = matriz[id_produto][0]
                        matriz[id_produto][0] = matriz[id_produto][0] + quantidade
                        quantidade_apos = matriz[id_produto][0]

                        escreva("Posição no vetor: ", id_produto, "\n")
                        escreva("Produto: ", ProdutosTI[id_produto], "\n")
                        escreva("Quantidade antes do recebimento: ", quantidade_antes, "\n")
                        escreva("Quantidade após o recebimento: ", quantidade_apos, "\n")
                    }
                    senao
                    {
                        escreva("ID inválido. Digite 0, 1 ou 2.\n")
                    }

                    escreva("----------------------------------------\n")
                    pare

                caso 3:
                    escreva("Programa encerrado\n")
                    pare

                caso contrario:
                    escreva("Opção inválida\n")
            }
        }
    }
}
