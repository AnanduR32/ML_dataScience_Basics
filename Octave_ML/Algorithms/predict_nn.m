function p = predict(Theta1, Theta2, X)
  %A neural net class predictor using the predefined set of weights 
  
  m = size(X, 1);
  num_labels = size(Theta2, 1);
  
  %predicted class 'p'
  p = zeros(size(X, 1), 1);
  
  a1 = [ones(m, 1) X]; %initialize first layer of nodes
  z2 = a1 * Theta1';   %output of first layer
  a2 = sigmoid(z2);  
  a2 = [ones(size(a2,1), 1) a2];
  z3 = a2 * Theta2';
  a3 = sigmoid(z3);    %final outputs
  
  %extract the class label for the class which has highest 
  %value of output
  [val, index] = max(a3,[],2); 
  p = index; %predicted class 
  
endfunction
