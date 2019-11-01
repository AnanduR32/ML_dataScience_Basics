% Initialize matrix A 
A = [1, 2, 3; 4, 5, 6;7, 8, 9] 

% Initialize vector v 
v = [1; 2; 3] 

% Multiply A * v
Av = A * v

% Multiplying a 3x3 matrix with a 3-d vector gives a 3-d vector 

% Initialize a 3 by 2 matrix 
A = [1, 2; 3, 4;5, 6]

% Initialize a 2 by 1 matrix 
B = [1; 2] 

% We expect a resulting matrix of 3x1 matrix 
mult_AB = A*B

%IDENTITY MATRICES 

% Initialize random matrices A and B 
A = [1,2;4,5]
B = [1,1;0,2]

% Initialize a 2 by 2 identity matrix
I = eye(2)

% I = [1,0;0,1]

% Multiplying I*A ? 
IA = I*A 

% How about A*I ? 
AI = A*I 

% Compute A*B 
AB = A*B 

% Compute B*A? 
BA = B*A 

% BA != AB

% IA = AI but AB != BA