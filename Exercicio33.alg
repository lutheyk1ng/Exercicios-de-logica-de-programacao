algoritmo "semnome"
// Função :
// Autor :  Luigi
// Data : 14/10/2025
// Seção de Declarações 
var
la, lb, lc, triangulo: inteiro
inicio
// Seção de Comandos 
escreva("Digite o lado A do triângulo: ")
leia(la)
escreva("Digite o lado B do triângulo: ")
leia(lb)
escreva("Digite o lado C do triângulo: ")
leia(lc)

se la < (lc+lb) entao
    triangulo <- 1
senao
    se lb < (lc + la) entao
        triangulo <- 1
    senao
        se lc < (lb + la) entao
            triangulo <- 1
        fimse
    fimse
fimse

se triangulo = 1 entao
    se la = lb entao
        se lb = lc entao
            escreval("É um triângulo equilátero!")
        senao
            escreval("É um triângulo isórcele")
        fimse
    senao
        se lb = lc entao
            escreval("É um triângulo isórcele")
        senao
            escreval("É um triângulo escaleno")
        fimse
    fimse
fimse

fimalgoritmo
