function gradApprox = GradientApproximator(n,thetaVec)
  EPSILON = 1e-4;
  for i = 1..n;
    thetaplus = theta;
    thetaplus(i) = thetaplus + EPSILON;
    thetaminus = theta;
    thetaminus(i) = thetaminus - EPSILON;
    gradApprox(i) = (J_func(thetaplus) - J_func(thetaminus))/(2*EPSILON));
  endfor
endfunction
