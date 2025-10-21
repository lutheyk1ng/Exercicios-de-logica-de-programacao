algoritmo "semnome"
// Função : Analisar a idade do nadador e analisar se ele é infantil ou juvenil ou senior.
// Autor : Luigi
// Data : 14/10/2025
// Seção de Declarações 
var
idade: inteiro

inicio
// Seção de Comandos 
escreva("Qual é a idade do nadador: ")
leia(idade)
escolha idade
    caso 5,6,7
        escreval("Infantil A")
    caso 8,9,10
        escreval("Infantil B")
    caso 11,12,13
        escreval("Juvenil A")
    caso 14,15,16,17
        escreval("Juvenil B")
    caso 18,19,20,21,22,23,24,25
        escreval("Sênior")
    outrocaso
        escreval("Idade fora da faixa etária")
fimescolha

fimalgoritmo

