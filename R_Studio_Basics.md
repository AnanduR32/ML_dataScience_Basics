# Basics
* setting current working directory - 
    ````
    setwd("</PATH TO WORKING DIRECTORY/>")
    ````
    Where setwd - set working directory
* executing an R program : 
    `````
    source("</PATH TO FILE.R/>",echo = TRUE)
* Commenting multiple lines ( comment symbol - '#')
    ````
    ctrl + shift + C
    ````
* Clear Console Window 
    ````
    ctrl + L
    ````
* Clearing the environment 
    ````
    rm(variable) // To remove a particular variable 
    ````
    ````
    rm(list=ls()) // ls() function lists all the variables and stores it in list, the -rm function then one by one remove each variable in the list
    ````
* Variables in R
    ````
    >  month.name
    [1] "January"   "February"  "March"     "April"     "May"      
    [6] "June"      "July"      "August"    "September" "October"  
    [11] "November"  "December" 
    > month.abb
    [1] "Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov"
    [12] "Dec"
    > pi
    [1] 3.141593
    > letters
    [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q"
    [18] "r" "s" "t" "u" "v" "w" "x" "y" "z"
    > LETTERS
    [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q"
    [18] "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
    ````
* Datatypes in R
    * Logical, Integer, Numeric, Complex, Character
    * To find datatype of a variable :
        * typeof(variable)
    * To verify is variable is of certain datatype
        * is.datatype(object) 
            eg: 
            ```` 
             is.integer(array_of_numbers)
    * To convert datatype to/as a specified one 
        * as.datatype(object) 
            eg: 
            ```` 
            as.logical(binary_array)
* Basic Objects in R
    * Vector, List, Dataframe 
    * Vector : an ordered collection of basic data types of given length
        * All the elements of a vector must be of same data type
        * eg : 
            ````
            X = c(2.3,2.6,3.5)
    * List : a generic object consisting of an ordered collection of objects
        * A list could consist of a numeric vector, a logical value, a matrix, a complex vector, a character array, a function, and so on
        * eg : 
            If
            ````
            ID = c(1,2,3,4)
            emp.name = c("Arun","Anil","Adil","Amar")
            num.emp = 4
            ````
            Then we can make a list of objects ID, emp.name and num.emp using the list() function as 
            ````
            emp.list = list(ID, emp.name, num.emp)
            print(emp.list) 
            
            ````
            Output : 
            ````
            [[1]]
            [1] 1 2 3 4
            
            [[2]]
            [1] "Arun" "Anil" "Adil" "Amar"
            
            [[3]]
            [1] 4 
            ````
        * Accessing Elements of a list 
            List item by specifying it within [[item]] and followed by a [instance] to access a list items' instance
            eg :
            ````
                print(emp.list[[1]][1])      
            ````
            output : 
            ````            
                1
            ````
        * Manipulating components can be done by simply accessing the component and modifying their values 
        * Concatenation of lists 
            ````
            emp.ages = list("ages" = c(24,23,12,54))
            emp.list = list(emp.list,emp.ages)
            ````
    * Dataframes 
        * Data frames are generic data objects of R, used to store tabular data
        * Syntax : 
            ````
            df = data.frame(vec1,vec2,vec3)
            ````
        * Reading dataframes from file 
            ````
            newDF = read.table(path=“Path of the file”)
            ````
        * Accessing rows/columns 
            * To access first two rows
            ````
            df[1:2,] 
            ````
            * To access first two columns 
            ````
            df[,1:2] or df[1:2]
            ````
        * Editing dataframes 
            * Method 1 : Similar to how lists are edited using [[]] to represent item and [] for that items' instance 
            * Using the edit() function 
            * To add rows, use 
              ````
              rbind(dataframe1, dataframe2) 
              ````
              here dataframe2 represents as many vectors as there are columns in dataframe1 
            * To add columns, use
              ```` 
              cbind(dataframe1, dataframe2)
              ````
              here dataframe2 has complete vector(s) with as many elements as there are rows in dataframe1
            * Deletion
              * Unconditional delete - specified selecting the row/column to be deleted a specifying '-' before their index value 
                ````
                df2 = df1[-3,-1] 
                ````
              here, the row 3 and column 1 will be removed from df1 and result stored in df2
              * conditional delete - selecting only necessary components of a dataframe and storing it
                ````
                df2 = df1[ , !names(df) %in% c("vec3")] 
                ````
                stores all columns(vectors) in df1 to df2 unless the column name is "vec3"
              * When manipulating string fields in a dataframes factoring problem can occur to avoid it set 'stringsAsFactors = F' during dataframe creation, as a parameter within the data.frame() function 
            * Recasting 
                * Melt : 
                ````
                    Df = melt(pd, id.vars = c(“Name“,”Month”),measure.vars = c(“BS", “BP"))
                ````
                * Cast : 
                ````
                    Df2 = dcast(Df,variable+month ~ Name,value.var=“value“)
                ````
                * Single-Step recasting :
                ````
                    Df2 = recast(Df,variable+month ~ name,id.var = c("Name","Month"))
                ````
            * Adding new variable to dataframe based on existing ones :
                * import library :
                ````
                    library(dplyr)
                ````
                * performing mutate function to transform variable 
                ````
                    pd2 <- mutate(pd, log_BP = log(BP))
                ````
            * Joining/Combining two dataframes :
                * Syntax : 
                ````
                    function(dataframe1, dataframe2, by = id.variable)
                ````
                * The following functions can be used to join two dataframes : 
                    * left_join()
                    * right_join()
                    * full_join()
                    * semi_join()
                    * inner_join()
                    * anti_join()
    * Arithematic and logical operators in R
    * Matrix : 
        * creation : 
        ````
            A = matrix() 
        ````
        The elements can be a sequence of numbers specified as one of the parameters 
        * nrow and ncol parameters are used to specify the dimensions of the matrix nrow x ncol
        * byrow boolean parameter specifies whether the values in the vector would be assigned "by row" or not
        * Creating special matrices :
            * Matrix where all rows and columns are filled by a single constant ‘k’. <br />
                For k=3, with ‘m’ rows & ‘n’ columns <br />
                Command:
                ````
                    matrix(3,m,n)
            * Diagonal matrix: <br />
                Values in diagonal,Mention ‘k’ as constant/array in first parameter. <br />
                Command: 
                ````
                    diag(k,m,n)
            * Identity matrix: <br />
                Use ‘diag()’ command with k=1
        * Matrix metrics: 
            * dim(A) <br />
                Finding the dimension of the matrix A
            * nrow(A) <br />
                Finding the number of rows in matrix A
            * ncol(A) <br />
                Finding the number of columns in matrix A
            * length(A) or prod(dim(A)) <br />
                Returns the number of elements in the matrix A
        * Accessing, editing, deleting in elements in matrices
            * Accessing an entry:
                ````
                    A[m,n]
                ````
                where m,n specify row and column
                * If m or n isn't specified then the column vector transpose or row vector respectively are output 
                * '-' sign before m or n signifies omittion of that particular row and/or column in output
            * ':' colon operator can be used to create a sequence of charactors - a sequence vector <br />
                which can be used to specify a range of row and column values for m and n used to extract submatrices
        * Matrix concatenation: <br />
            Concatenation of rows can be done using rbind() and that of columns using cbind()
        * Matrix algebra : <br />
            Given A and B are two square matrices of order 3x3
            * addition:
            ````
                A+B
            ````
            * Subtraction 
            ````
                A-B
            ````
            * Regular matrix multiplication 
            ````
                A%*%B
            ````
            * Element-wise matrix muliplication
            ````
                A*B
            ````
            * Element-wise matrix division 
            ````
                A/B
            ````
        * Functions:<br />
            * Syntax: <br />
                f = function(arguments){
                    statements`
                }
            * Loading functions: <br />
                source('path/to/function.R')
            * Lazy evaluation of functions in R: <br/>
                Functions are lazily evaluated, which means that if some arguments are missing, the function is still executed as long as the execution doesn’t involve these arguments.
            * Multiple Input Multiple Output(MIMO) functions:
                Functions in R take multiple input objects but returns only one object as output.<br/>
                This however is not a limitation, because a list object (collection of several objects) can be returned by function
            * Looping of functions over an object:
                * apply <br />
                    Applies a given function over the margins of a given array. <br />
                    Syntax:
                    ````
                        apply(array, margins, function,...)
                * lappy <br />
                    lapply is used to apply a function over a list. <br />
                    lapply always returns a list of the same length as the input list. <br />
                    Syntax: 
                    ````
                        lapply(list, function, ...)
                * mapply <br />
                    mapply is a multivariate version of lapply. <br />
                    A function can be applied over several lists simultaneously. <br />
                    Syntax: 
                    ````
                        mapply(fun, list1, list2, ...)
                * tapply <br />
                    tapply is used to apply a function over subset of vectors given by a combination of factors. <br />
                    Syntax: 
                    ````
                        tapply(vector, factors, function, ...)
* Control functions: 
    * If , If else and If-elseif - else are a family of constructs where: <br />
        A condition is first checked, if it is satisfied then operations are performed <br />
        If condition is not satisfied, code exits construct or moves on to other options
    * Sequence function: <br />
        A sequence is one of the components of a ‘for loop’ <br />
        syntax : 
        ````
            seq(from, to, by, length)
        ````
        Creates equi-spaced points between ‘from’ and ‘to’
    * for loop, Nested for Loops <br />
        * The structure of a for loop construct comprises: 
            A ‘sequence’ which could be a vector or a list <br />
            ‘iter’ is an element of the sequence Statements
        * Nested for-loop : one or more for loop constructs are located within another.
        * break; statement: <br />
            A “break” statement once executed, program exits the loop even before iterations are complete “break” command comes out of the innermost loop for nested loops.
    * while loop  <br />
        A while loop is used whenever you want to execute statements until a specific condition is violated
* Data visualization in R  <br />
    X = 1:10 <br />
    Y= X^2 
    * Scatter-plot:
    ````
        plot(dataframe$attribute1, dataframe$attribute2, main="Title of graph", xlab="x-axis", ylab="y-axis", pch= )
    ````
    pch specifies various shapes of the points 
    * Line plot:
    ````
        plot(X,Y,type = ‘l’)
    ````
    type l plots a line connecting all the points 
    * Bar plot:
    ````
        Syntax:
           barplot(H, names.arg, xlab, ylab, main, names.arg, col)
        R – code :
            H <- c(7,12,28,3,41)
            M <- c("Mar","Apr","May","Jun","Jul")
            barplot(H,names.arg = M, xlab = "Month", ylab = "Revenue", col = "blue", main = "Revenue chart",border = "red")
    ````
        
            
           
            
          
   
