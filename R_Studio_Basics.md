# Basics
* setting current working directory - 
    ````
    setwd("</PATH TO WORKING DIRECTORY/>")
    ````
    Where setwd - set working directory
* executing an R program : 
    `````
    source("</PATH TO FILE.R/>",echo = TRUE)
    ````
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
        * is.datatype(object) eg: is.integer(array_of_numbers)
    * To convert datatype to/as a specified one 
        * as.datatype(object) eg: as.logical(binary_array)
* Basic Objects in R
    * Vector, List, Dataframe 
