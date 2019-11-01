% The ; denotes we are going back to a new row.
fprintf "Matrix:\n"
A = [1, 2, 3; 4, 5, 6; 7, 8, 9; 10, 11, 12]

% Initialize a vector 
fprintf "Vector :\n"
v = [1;2;3] 

% Get the dimension of the matrix A where m = rows and n = columns
fprintf "Dimenton \nm - row :\nn - column :\n"
[m,n] = size(A)

% You could also store it this way
fprintf "vector :"
dim_A = size(A)

% Get the dimension of the vector v 
fprintf "Dimension of vector v :\n"
dim_v = size(v)

% Now let's index into the 2nd row 3rd column of matrix A
A_23 = A(2,3)
