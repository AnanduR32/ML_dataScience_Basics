function g = sigmoid(z)
  %Calculating the sigmoid f(z) of z;
  g = 1.0 ./ (1.0 + exp(-z));
endfunction
