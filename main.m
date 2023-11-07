%EXEMPLO 1:
%A = [10, 2, 1; 1, 5, 1; 2, 3, 10];
%b = [7; -8; 6];
%x0 = [0.5; -1; 0.5];

%EXEMPLO 2:
%A = [4, 1, 2; 1, 5, 1; 2, 3, 6];
%b = [2; -1; 4];
%x0 = [0; 0; 0];

%tolerancia = 0.0005;
%maxIter = 1000;

% Entrada do usuário
A = input("Digite a matriz A: ");
b = input("Digite o vetor b: ");
x0 = input("Digite o vetor de aproximações iniciais x0: ");

tolerancia = input("Digite a tolerância: ");

maxIter = input("Digite o número máximo de iterações: ");


gauss_jacobi(A, b, x0, tolerancia, maxIter);
