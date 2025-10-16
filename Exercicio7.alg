algoritmo "semnome"
// Função : Cotação do dollar
// Autor :
// Data : 25/09/2025
// Seção de Declarações 
var
rs, us, cotacao, dollardisponivel: real

inicio
// Seção de Comandos
escreva("Qual é a cotação do dolar? ")
leia(cotacao)
escreva("Quantos dolares você possui? ")
leia(us)
rs <- us/cotacao
escreval(us," Dolares equivalem á: ",rs," R$")

fimalgoritmo
