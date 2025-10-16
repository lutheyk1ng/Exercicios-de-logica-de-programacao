algoritmo "semnome"
// Função :
// Autor :
// Data : 13/10/2025
// Seção de Declarações 
var
salarioMinimo, novoSalario, reajuste, reajusteTotal, folha, novaFolha, calc, salario: real
nome, opc: caractere
x: inteiro

inicio
// Seção de Comandos

  escreval("<><><><><> Sistema de reajuste salarial <><><><><>")
    escreva("Digite o valor atual do salário mínimo: ")
    leia(salarioMinimo)

    folha <- 0
    novaFolha <- 0

    para x de 1 ate 584 faca
        limpatela
        escreva("Digite o nome: ")
        leia(nome)
        escreva("Digite o salário: ")
        leia(salario)

        se salario < salarioMinimo * 3 entao
            reajuste <- 0.50
        senao
            se salario <= salarioMinimo * 10 entao
                reajuste <- 0.20
            senao
                se salario <= salarioMinimo * 20 entao
                    reajuste <- 0.15
                senao
                    reajuste <- 0.10
                fimse
            fimse
        fimse

        novoSalario <- salario + (reajuste * salario)
        folha <- folha + salario
        novaFolha <- novaFolha + novoSalario

        limpatela
        escreval(">>> Nome: ", nome)
        escreval(">>> Reajuste = ", reajuste * 100, "%: R$ ", reajuste * salario)
        escreval(">>> Novo salário: R$ ", novoSalario)
        escreval(">>> Tecle Enter para continuar...")
        leia(opc)
    fimpara

    escreval("")
    escreval("A empresa aumentou a folha de pagamento em: R$ ", novaFolha - folha)
fimalgoritmo
