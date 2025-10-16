algoritmo "semnome"
// Função : Vendedor com comissão de 15%
// Autor : Luigi
// Data : 23/09/2025
// Seção de Declarações 
var
nome: caractere
salario_fixo, total_vendas, comissao, salario_final: real

inicio
// Seção de Comandos
escreva("Digite o nome do vendedor: ")
leia(nome)
escreva("Digite o salário fixo: ")
leia(salario_fixo)
escreva("Digite o total de vendas do mês: ")
leia(total_vendas)

comissao <- total_vendas * 0.15      // Aqui o código vai multiplcar por 0.15
salario_final <- salario_fixo + comissao

escreva("Nome do vendedor: ", nome)
escreva("Salario Fixo: R$ ", salario_fixo:0:2)
escreva("Salario final do mês: R$ ", salario_final:0:2)

fimalgoritmo
