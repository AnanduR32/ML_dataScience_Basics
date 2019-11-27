function [J, grad] = lrCostFunction(theta, X, y, lambda)
  m = length(y); 
  J = 0;
  
  % Regularization done only on the normal parameters isn't 
  %required on the bias term so substituting the value with 0 we get
  
  theta_reg=[0;theta(2:length(theta))]; 
  
  grad = zeros(size(theta));
  pred=sigmoid(X*theta);
  
  %regularization term for cost function J();
  reg_var_J=(lambda/(2*m))*theta_reg'*theta_reg;
  
  %regularization term for gradient descent
  reg_var_G=(lambda.*theta_reg)./m;
  
  J=((-y'*log(pred)-(1-y)'*log(1-pred))./m)+reg_var_J;
  grad=(X'*(pred-y))./m+reg_var_G;
  
  %to convert to column vector 
  grad = grad(:);
endfunction
