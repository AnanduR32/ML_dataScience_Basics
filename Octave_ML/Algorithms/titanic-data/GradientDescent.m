function [theta,J] = GradientDescent()
  data=csvread('train.csv');
  m=length(data);
  X=[data(1:m,3),data(1:m,7)];
  X=[ones(m,1),X];
  alpha=0.075;
  theta=ones(3,1);
  y=data(:,2);
  X(X(:,3)==0,3)=mean(X(:,3));
  z=ones(m,1);
  for i=1:10000000,
    pred=(1./(1+exp(-(X*theta))))>0.5;
    Delta=((pred-y)'*X)./m;
    theta=theta-alpha*Delta';
    %J=computeCostLog(X,y,theta);
  end;
endfunction


