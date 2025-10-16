algoritmo "semnome"
// Função :
// Autor :
// Data : 13/10/2025
// Seção de Declarações 
var
x: inteiro
precoVenda, precoCusto: real
mediaCusto, mediaVenda: real

inicio
// Seção de Comandos 
para x de 1 ate 40 faca
    limpatela
    escreva("Digite o preço de custo: ")
    leia(precoCusto)
    mediaCusto <- mediaCusto + precoCusto
    escreva("Digite o preço de venda: ")
    leia(precoVenda)
    mediaVenda <- mediaVenda + precoVenda
    
    se precoVenda < precoCusto entao
        escreval("Houve prejuízo na venda")
    senao
        se precoVenda = precoCusto entao
            escreval("Houve empate na venda")
        fimse
        se precoVenda > precoCusto entao
            escreval("Houve lucro na venda")
        fimse
    fimse
    
fimpara

limpatela
escreval("A média de preço de custo foi: ",mediaCusto/40)
escreval("A média de preço de venda foi: ",mediaVenda/40)

fimalgoritmo
