function [theta,J] = GradientDescent(X,y,alpha,theta)
  m=size(X,1);
  z=zeros(m,1);
  for i=1:1000,
    z=X*theta;
    pred=1/(1+exp(-z));
    if(pred>=0.5)
      pred=1;
    else
      pred=0;
    endif
    Error=(pred-y);
    Delta=Error'*X;
    Delta=Delta*(1/m);
    theta=theta-alpha*Delta';
    %J=computeCostLog(X,y,theta);
  end;
endfunction


