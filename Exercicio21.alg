algoritmo "semnome"
// Função :
// Autor :
// Data : 13/10/2025
// Seção de Declarações 
var
programa, idade, apto: inteiro
nome, sexo, saude, opc: caractere
totApto, total: inteiro
inicio
// Seção de Comandos 
programa <- 1
enquanto programa = 1 faca
    limpatela
    apto <- 1
    saude <- "B"
    total <- total + 1
    escreva("Digite o nome: ")
    leia(nome)
    escreva("Digite o sexo (M/F): ")
    leia(sexo)
    escreva("Digite a idade: ")
    leia(idade)
    se idade < 18 entao
        apto <- 0
    fimse
    escreval("Digite o estado de saúde: ")
    escreva("(B) Bom - (R) - Ruim - ")
    leia(saude)
    se saude = "R" entao
        apto <- 0
    senao
        se saude <> "B" entao
            apto <- 0
        fimse
    fimse
    se apto = 1 entao
        totApto <- totApto + 1
    fimse
    escreval("Deseja continuar filtrando (S/N)? ")
    leia(opc)
    se opc = "N" entao
        programa <- 0
    fimse
fimenquanto
limpatela
escreval("Resumo geral: ")
escreval("Foram filtrados: ",total," pessoas")
escreval("Aptos: ",totApto)
escreval("")

fimalgoritmo
