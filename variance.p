import pandas as pd 
number = { 'numbers' : [37,42,48,51,52,53,54,54,55]}
df=pd.DataFrame(number, columns=['numbers'])
mean=df['numbers'].mean() #calculating the mean of the dataset
devn=df['numbers'] - mean #creating a column of deviations of each term with respect to the mean
sqDevn=devn ** 2          #calculating square deviation
variance=sqDevn.mean()    #calculating variance by dividing summation of squared deviations by number of terms
print(variance)
var=df['numbers'].var(ddof=0) #builtin python function to calculate variance
print(var)
