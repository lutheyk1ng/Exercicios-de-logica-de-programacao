algoritmo "semnome"
// Função :
// Autor :
// Data : 29/09/2025
// Seção de Declarações
var
custo, venda, percentual: real

inicio
// Seção de Comandos
escreva("Digite o valor do produto: ")
leia(custo)
escreva("Digite o percentual para a venda: ")
leia(percentual)
percentual <- (percentual/100) * custo
venda <- custo + percentual
escreval("O valor da venda é: ",venda)

fimalgoritmo
