algoritmo "semnome"
// Função :
// Autor :
// Data : 13/10/2025
// Seção de Declarações 
var
programa, numero: inteiro
opc: caractere

inicio
// Seção de Comandos
programa <- 1
enquanto programa = 1 faca
    limpatela
    escreva("Digite um número: ")
    leia(numero)
    se numero > 0 entao
        escreval("Positivo")
    senao
        se numero = 0 entao
            escreval("O número é igual a 0")
        fimse
        se numero < 0 entao
            escreval("Negativo")
        fimse
    fimse


    escreva("Deseja finalizar? (S/N) ")
    leia(opc)
    se opc = "S" entao
        programa <- 0
    fimse

fimenquanto

fimalgoritmo
