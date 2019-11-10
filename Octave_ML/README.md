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
  
### 
  
  
### Appending matrices
````
Matrix A = [1,2,3;4,5,6;7,8,9] is a 3x3 matrix
Matrix B = [1,2,3] is a row matrix
Matrix C = [1;2;3] is a column matrix 
````
* Then, we can form a matrix [A;B] or [A,C] but not [A;C] and [A,B] becasue of row mismatch and column mismatch respectively 

#### NOTE 
* Initializing variables with semicolon prevents the variable to be output upon being initialized, We can later use the variable itself or function disp() to display the variable output
* We can use function zeros() and ones() to initialize a matrix with one or zeros respectively, the dimenstions of the matrices required are specified within the parenthesis as (row_,column_)

### Functions
* size() : 
    * The size function is used to find the dimensions of a matrix
    * Returns a 1x2 matrix with number of rows and number of columns as its elements 
    * Usage :
      ````
       [r,c] = length(A);
      ````
* Length()
    * Function used to find the length of the matrix/vector 
    * It returns the number of rows in the matrix/vector
    * Usage :
      ````
      len = length(A);
      ````
* Length()
    * Function used to find max values in each column 
    * It returns the a 1xn matrix with the maximum value in each column as it data elements
    * Usage :
      ````
      m = max(A);
      ````
    * Alternate usage :
      ````
      m = max(A,[],1) --> Default usage as given above
      
      m = max(A,[],2) --> To find the maximum value in each row and display it as a nx1 matrix
      ````
* plot()
    * To make a plot between two vectors 
    * usage : 
      ````
      plot(amplitude,frequecy) --> plotting amplitude against frequency curve for a wave
      ````
      
