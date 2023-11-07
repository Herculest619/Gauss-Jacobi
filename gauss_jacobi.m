function gauss_jacobi(A,b,x,tol,N)
  printf("\n\n");
  n = size(A,1);
  x0 = x;
  iter = 1;

  %iteracao Jacobi
  while (iter <= N)

    printf("%3.0dº Iteração:  ", iter);

    % percorre todas as linhas da matriz A
    for i = 1:n

      %Atualiza a estimativa do valor de x(i) na iteração atual, utilizando a fórmula de Jacobi para cada elemento de x
      x(i) = (b(i) - A(i,[1:i-1,i+1:n])*x0([1:i-1,i+1:n]))/A(i,i);
      printf("%8.4d  ", x(i));
    endfor
    printf("\n");

    %condicao de parada
    if (norm(x-x0,"inf")<tol)
      return
    endif

    %prepara nova iteracao
    x0 = x;
    iter += 1;
  endwhile

  error("num. max. iter. excedido.")

endfunction
