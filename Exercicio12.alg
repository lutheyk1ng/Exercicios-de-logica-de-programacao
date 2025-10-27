algoritmo "semnome"
// Função : O custo de um veículo
// Autor :
// Data : 29/09/2025
// Seção de Declarações 
var
custoFabrica, custoFinal: real

inicio
// Seção de Comandos

escreva("Informe o custo de fábrica do veículo: ")
leia(custoFabrica)
custoFinal <- custoFabrica + (0.28 * custoFabrica) + (0.45 * custoFabrica)
custoFinal <- custoFinal + (0.45 * custoFinal)
escreval("O custo para o consumidor final é de: ",custoFinal)

fimalgoritmo

