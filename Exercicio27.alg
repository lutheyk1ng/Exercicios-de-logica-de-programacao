algoritmo "semnome"
// Função :
// Autor :
// Data : 13/10/2025
// Seção de Declarações 
var
desconto, valorPago, valorVeiculo: real
totalDesconto, totalPago: real
combustivel, opc: caractere

inicio
// Seção de Comandos
valorVeiculo <- 1
opc <- "x"
enquanto valorVeiculo <> 0 faca
    limpatela
    escreva("Digite o valor do veículo: ")
    leia(valorVeiculo)
    se valorVeiculo <> 0 entao
        escreval("Digite o combustível")
        escreva("(G)asolina / (A)lcool / (D)iesel: ")
        leia(combustivel)
        escolha combustivel
            caso "A"
                desconto <- 0.25 * valorVeiculo
            caso "G"
                desconto <- 0.21 * valorVeiculo
            caso "D"
                desconto <- 0.14 * valorVeiculo
            outrocaso
                escreval("Combustível inválido!")
                escreval("Não haverão descontos!")
                desconto <- 0
        fimescolha
        valorPago <- valorVeiculo - desconto
        totalDesconto <- totalDesconto + desconto
        totalPago <- totalPago + valorPago
        escreval("Desconto no veículo: ",desconto)
        escreval("Valor total a ser pago: ",valorPago)
        escreval("Tecle enter para continuar...")
        leia(opc)
    fimse
fimenquanto
limpatela
escreval("Resumo geral: ")
escreval("Total de descontos: ",totalDesconto)
escreval("Total Pago pelos clientes: ",totalPago)

fimalgoritmo
