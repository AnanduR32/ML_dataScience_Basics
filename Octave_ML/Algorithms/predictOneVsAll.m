function p = predictOneVsAll(theta, X)
  %predict class using theta values obtained in the classifier
  m = size(X, 1);
  p = zeros(size(X, 1), 1);
  X = [ones(m, 1) X];
  Z = X * theta';
  G = sigmoid(Z);
  [val, p] = max(G, [], 2);
  
endfunction
