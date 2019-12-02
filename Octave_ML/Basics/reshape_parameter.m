function theta1,theta2,theta3 = reshape_parameter(thetaVec,len1,len2,len3,m1,n1,m2,n2,m3,n3)
  theta1=reshape(thetaVec(1:len1),m1,n1);
  theta2=reshape(thetaVec(len1+1:len1+len2),m2,n2);
  theta3=reshape(thetaVec(len1+len2+1:len1+len2+len3),m3,n3);
endfunction
