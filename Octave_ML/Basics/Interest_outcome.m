% r is interest rate 
fprintf("Interest rate r:\n")
r=11
balance = zeros(1,5)
% Initial balance in account 
fprintf("Initial balance in account: 9000\n")
balance(1)=9000

for k = 1:4
  balance(k+1)=((r/100)+1)*balance(k);
endfor
disp(balance)
