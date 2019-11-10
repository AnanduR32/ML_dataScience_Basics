function theta = gradientDescent(X, y, theta, alpha, num_iters)
m = length(y); 
for iter = 1:num_iters
    pred=X*theta;
    Error=(pred-y);
    Delta=Error'*X;
    Delta=Delta*(1/m);
    theta=theta-alpha*Delta';
    J=computeCost(X,y,theta);
end

end
