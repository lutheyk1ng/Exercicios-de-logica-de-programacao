algoritmo "Avaliacao_z"
// Disciplina : Linguagem e Lógica de Programação
// Professor  : [Nome do Professor]
// Descrição  : Sistema com menu para cadastro de produtos, vendas e relatórios
// Autor(a)   : [Seu nome]
// Data atual : 21/10/2025

var
    opc, i, indiceVenda: inteiro
    saida: inteiro
    nomeProduto: vetor[1..100] de caractere
    qtdProduto: vetor[1..100] de inteiro
    valorProduto: vetor[1..100] de real

    nomeVenda: vetor[1..100] de caractere
    qtdVendida: vetor[1..100] de inteiro
    valorVenda: vetor[1..100] de real

    totalProdutos, totalVendas: inteiro
    totalDiario: real

inicio
    saida <- 1
    totalProdutos <- 0
    totalVendas <- 0
    totalDiario <- 0

    enquanto (saida <> 0) faca
        escreval()
        escreval("============ MENU ============")
        escreval("1 - CADASTRO")
        escreval("2 - VENDAS")
        escreval("3 - RELATÓRIOS")
        escreval("4 - ALTERAR PRODUTO")
        escreval("5 - INDICE DE PRODUTOS")
        escreval("0 - SAIR")
        escreval()
        escreva("Escolha uma opção: ")
        leia(opc)
        escreval()

        escolha (opc)

            // --- CADASTRO ---
            caso 1
                limpatela
                escreval("============ CADASTRO DE PRODUTOS ============")
                totalProdutos <- totalProdutos + 1
                escreva("Nome do produto: ")
                leia(nomeProduto[totalProdutos])
                escreva("Quantidade: ")
                leia(qtdProduto[totalProdutos])
                escreva("Valor unitário: R$ ")
                leia(valorProduto[totalProdutos])

                limpatela
                escreval("===============================")
                escreval("Produto cadastrado com sucesso!")
                escreval("===============================")
                escreval()

            // --- VENDAS ---
            caso 2
                limpatela
                se (totalProdutos = 0) entao
                    escreval("Não há nenhum produto no estoque!")
                senao
                    escreval("=== REALIZAR VENDA ===")
                    para i de 1 ate totalProdutos faca
                        escreval(i , " - ", nomeProduto[i], " (Qtd: ", qtdProduto[i], ", Valor: R$ ", valorProduto[i]:2:2, ")")
                    fimpara

                    escreval()
                    escreva("Digite o ID do produto: ")
                    leia(i)

                    se (i >= 1) e (i <= totalProdutos) entao
                        escreva("Quantidade vendida: ")
                        leia(qtdVendida[totalVendas + 1])

                        se (qtdVendida[totalVendas + 1] <= qtdProduto[i]) entao
                            qtdProduto[i] <- qtdProduto[i] - qtdVendida[totalVendas + 1]

                            nomeVenda[totalVendas + 1] <- nomeProduto[i]
                            valorVenda[totalVendas + 1] <- qtdVendida[totalVendas + 1] * valorProduto[i]
                            totalDiario <- totalDiario + valorVenda[totalVendas + 1]

                            escreval()
                            escreval("Venda realizada com sucesso!")
                            escreval("Valor total da venda: R$ ", valorVenda[totalVendas + 1]:2:2)

                            totalVendas <- totalVendas + 1
                        senao
                            escreval("Erro: quantidade insuficiente em estoque!")
                        fimse
                    senao
                        escreval("Produto inválido!")
                    fimse
                fimse
                escreval()

            // --- RELATÓRIOS ---
            caso 3
                limpatela
                escreval("============ RELATÓRIOS ============")
                escreval("1 - Vendas diárias")
                escreval("2 - Estoque atual")
                escreval("3 - Produtos para reposição")
                escreval("0 - Voltar")
                escreval()
                escreva("Escolha: ")
                leia(indiceVenda)
                escreval()

                escolha (indiceVenda)
                    caso 1
                        limpatela
                        escreval("============ RELATÓRIO DE VENDAS ============")
                        se totalVendas = 0 entao
                            escreval("Nenhuma venda registrada.")
                        senao
                            para i de 1 ate totalVendas faca
                                escreval(i, " - ", nomeVenda[i], " | Valor: R$ ", valorVenda[i]:2:2)
                            fimpara
                            escreval("----------------------------------")
                            escreval("TOTAL VENDIDO NO DIA: R$ ", totalDiario:2:2)
                        fimse

                    caso 2
                        limpatela
                        escreval("============ ESTOQUE ATUAL ============")
                        se (totalProdutos = 0) entao
                            escreval("Nenhum produto cadastrado.")
                        senao
                            para i de 1 ate totalProdutos faca
                                escreval(i, " - ", nomeProduto[i], " | Qtd: ", qtdProduto[i], " | Valor: R$ ", valorProduto[i]:2:2)
                            fimpara
                        fimse

                    caso 3
                        limpatela
                        escreval("=== PRODUTOS PARA REPOSIÇÃO ===")
                        se (totalProdutos = 0) entao
                            escreval("Não há produtos cadastrados.")
                        senao
                            para i de 1 ate totalProdutos faca
                                se qtdProduto[i] < 5 entao
                                    escreval(nomeProduto[i], " | Estoque baixo: ", qtdProduto[i])
                                senao
                                    escreval(nomeProduto[i], " | Estoque está legal | Unidades: ", qtdProduto[i])
                                fimse
                            fimpara
                        fimse

                    caso 0
                        escreval("Voltando ao menu principal...")

                    outrocaso
                        escreval("Opção inválida!")
                fimescolha
                escreval()

            // --- ALTERAR PRODUTO ---
            caso 4
                limpatela
                se (totalProdutos = 0) entao
                    escreval("Nenhum produto cadastrado para alterar.")
                senao
                    escreval("=== PRODUTOS CADASTRADOS ===")
                    para i de 1 ate totalProdutos faca
                        escreval(i, " - ", nomeProduto[i], " | Qtd: ", qtdProduto[i], " | Valor: R$ ", valorProduto[i]:2:2)
                    fimpara

                    escreval()
                    escreva("Digite o ID do produto que deseja alterar (0 para cancelar): ")
                    leia(i)

                    se (i = 0) entao
                        escreval("Alteração cancelada.")
                    senao
                        se (i >= 1) e (i <= totalProdutos) entao
                            escreval()
                            escreval("1 - Alterar Nome")
                            escreval("2 - Alterar Quantidade")
                            escreval("3 - Alterar Valor")
                            escreval("0 - Sair")
                            escreval()
                            escreva("Escolha: ")
                            leia(opc)

                            escolha (opc)
                                caso 1
                                    escreval()
                                    escreval("Nome Atual: ", nomeProduto[i])
                                    escreva("Novo nome: ")
                                    leia(nomeProduto[i])
                                caso 2
                                    escreval()
                                    escreval("Quantidade Atual: ", qtdProduto[i])
                                    escreva("Nova quantidade: ")
                                    leia(qtdProduto[i])
                                caso 3
                                    escreval()
                                    escreval("Valor Atual: R$ ", valorProduto[i]:2:2)
                                    escreva("Novo valor: R$ ")
                                    leia(valorProduto[i])
                                caso 0
                                    limpatela
                                    escreval("Alteração cancelada.")
                                outrocaso
                                    escreval("Opção inválida!")
                            fimescolha

                            escreval()
                            escreval("Produto alterado com sucesso!")
                        senao
                            escreval("ID inválido!")
                        fimse
                    fimse
                fimse

            // --- INDICE DE PRODUTOS ---
            caso 5
                limpatela
                escreval("========== ÍNDICE DE PRODUTOS ============ ")
                se (totalProdutos = 0) entao
                    escreval("Nenhum produto cadastrado.")
                senao
                    para i de 1 ate totalProdutos faca
                        escreval(i, " - ", nomeProduto[i])
                    fimpara
                fimse
                escreval("PRESSIONE ENTER PARA CONTINUAR")
                leia()

            // --- SAIR ---
            caso 0
                limpatela
                escreval("Saindo do programa...")
                saida <- 0

            outrocaso
                escreval("Opção inválida! Tente novamente.")

        fimescolha
    fimenquanto
fimalgoritmo

