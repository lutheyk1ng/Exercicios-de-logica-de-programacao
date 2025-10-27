#include <stdio.h>

int main() {
    // Função:
    // Autor: Luigi
    // Data: 14/10/2025

    int la, lb, lc, triangulo = 0;

    // Seção de Comandos
    printf("Digite o lado A do triângulo: ");
    scanf("%d", &la);

    printf("Digite o lado B do triângulo: ");
    scanf("%d", &lb);

    printf("Digite o lado C do triângulo: ");
    scanf("%d", &lc);

    // Verificação se pode formar um triângulo
    if (la < (lb + lc) && lb < (la + lc) && lc < (la + lb)) {
        triangulo = 1;
    }

    if (triangulo == 1) {
        if (la == lb && lb == lc) {
            printf("É um triângulo equilátero!\n");
        } else if (la == lb || lb == lc || la == lc) {
            printf("É um triângulo isósceles!\n");
        } else {
            printf("É um triângulo escaleno!\n");
        }
    } else {
        printf("Os valores informados não formam um triângulo.\n");
    }

    return 0;
}
