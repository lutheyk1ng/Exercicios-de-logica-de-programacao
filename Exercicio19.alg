algoritmo "semnome"
// Função :
// Autor :
// Data : 06/10/2025
// Seção de Declarações 
var
nome, sexo: caractere
x, h, m: inteiro

inicio
// Seção de Comandos 
para x de 1 ate 5 faca
     escreva("Digite o nome: ")
     leia(nome)
     escreva("H de Homem ou M de Mulher: ")
     leia(sexo)
     escolha sexo
         caso "H"
              h <- h + 1
         caso "M"
              m <- m + 1
         caso
 fimescolha
fimpara
escreval("Foram inseridos",h," Homens")
escreval("Foram inseridos",m," Mulheres")


fimalgoritmo
