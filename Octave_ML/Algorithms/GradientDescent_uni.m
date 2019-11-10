function B = GradientDescent(X,Y,a,B)
  m=size(X,1);
  for i=1:1000,
    J=(1/m)*sum((X'*((X*B)-Y)));
    B=B-(a*J);
  end;
endfunction
