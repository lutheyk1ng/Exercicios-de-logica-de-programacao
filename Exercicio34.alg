algoritmo "semnome"
// Função :
// Autor :
// Data :
// Seção de Declarações 
var
nivel, horas: inteiro
inicio
// Seção de Comandos
escreva("Qual é o nivel do professor? (1/2/3)): ")
leia(nivel)
escreva("Digite o numero das horas trabalhadas: ")
leia(horas)

se nivel = 1 entao
    escreval("O professor vai ganhar",horas*12)
senao
    se nivel = 2 entao
        escreval("O professor vai ganhar",horas*17)
    senao
        escreva("O professor vai ganhar",horas*25)
    fimse
fimse

fimalgoritmo
