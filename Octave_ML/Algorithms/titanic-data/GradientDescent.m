function [theta,J] = GradientDescent()
  data=csvread('train.csv');
  X=[data(:,3),data(:,7)];
  m=length(X);
  X=[ones(m,1),X];
  alpha=0.001;
  theta=zeros(3,1);
  i=1;
  y=data(:,2);
  while(i<=m)
    if(isna(X(i,3)))
      X(i,3)=avg_age;
    endif
    i=i+1;
  end
  z=zeros(m,1);
  for i=1:100000,
    z=X*theta;
    pred=1/(1+exp(-z));
    if(pred>=0)
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


