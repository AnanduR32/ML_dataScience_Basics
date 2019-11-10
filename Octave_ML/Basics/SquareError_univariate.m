function J = SquareError_univariate(X,Y,B)
  m=size(X,1);
  pred=X*B;
  E=(Y-pred).^2;
  J = ( (1/(2*m)) * (sum(E)) );
endfunction
