algoritmo "semnome"
// Função :
// Autor :
// Data : 08/10/2025
// Seção de Declarações 
var
    opc: caractere
    ano, total, total2000: inteiro
    valor, valorFinal, desconto: real
inicio
    total <- 0
    total2000 <- 0
    opc <- "S"

    enquanto opc <> "N" faca
        limpatela
        escreva("Digite o valor do carro: ")
        leia(valor)
        escreva("Digite o ano do carro: ")
        leia(ano)

        se ano <= 2000 entao
            desconto <- 0.12
            total2000 <- total2000 + 1
        senao
            desconto <- 0.07
        fimse

        valorFinal <- valor - (valor * desconto)
        total <- total + 1

        escreval("Valor com desconto: R$ ", valorFinal:0:2)
        escreval("")
        escreva("Deseja continuar? (S/N): ")
        leia(opc)
    fimenquanto

    escreval("Carros até 2000: ", total2000)
    escreval("Total geral: ", total)
fimalgoritmo
