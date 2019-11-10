# OCTAVE/MATLAB TUTORIAL
### Defining a matrix A
* A being a 1x4 Matrix : Separate the elements using cammas - ","
  ````
  A = [1,2,3,4];
  ````
* A being a 4x1 Matrix : Separate the elements using semicolons - ";"
  ````
  A = [1;2;3;4];
  ````
* Use combinations of cammas and semicolons to obtain the desired matrix 'A'

### Identity Matrix I
* An identity matrix satisfies the condition - A\*I = I\*A = A
  ````
  define I = eye(x) % where x specifies the number of rows and columns
  ````
  
### Magic Matrix M
* A Square matrix of which the sum of row/column/diagonal elements give the same result
  ````
  M = magic(x) % where x specifies the number of rows and columns
  ````
  
### Length()
* Function used to find the length of the matrix/vector 
* Returns a 1x2 matrix with number of rows and number of columns as its elements 
* Usage :
  ````
  [r,c] = length(A);
  ````
  
### Appedning matrices
````
Matrix A = [1,2,3;4,5,6;7,8,9] is a 3x3 matrix
Matrix B = [1,2,3] is a row matrix
Matrix C = [1;2;3] is a column matrix 
````
* Then, we can form a matrix [A;B] or [A,C] but not [A;C] and [A,B] becasue of row mismatch and column mismatch respectively 
