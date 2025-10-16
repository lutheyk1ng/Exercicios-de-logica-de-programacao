algoritmo "semnome"
// Função :
// Autor :  Luigi
// Data : 14/10/2025
// Seção de Declarações 
var
A, B: real
C: caractere

inicio
// Seção de Comandos
escreva("Digite o primeiro número: ")
leia(A)
escreva("Digite o segundo número: ")
leia(B)
escreva("Digite a operação desejada (+ - / *): ")
leia(C)
escolha C
    caso "+"
        escreval("A+B =",A+B)
    caso "-"
        escreval("A-B =",A-B)
    caso "*"                                                  =
        escreval("A*B =",A*B)
    caso "/"
        se B = 0 entao
            escreval("Um número não pode ser dividido por 0!")
        senao
            escreval("A/B =",A/B)
        fimse
    outrocaso
        escreval("Operador não definido!")
fimescolha
fimalgoritmo
