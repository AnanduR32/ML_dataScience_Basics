#To calculate how many values are within one unit standard deviation of the mean value 
import pandas as pd 
number = { 'numbers' : [180,313,101,255,202,198,109,183,181,113,171,165,318,145,131,145,226,113,268,108]}
df=pd.DataFrame(number, columns=['numbers'])
mean=df['numbers'].mean()
variance=df['numbers'].var(ddof=0)
stdevn=df['numbers'].std(ddof=0) 
print(mean)     
print(variance)
print(stdevn)
diff=abs(df['numbers'] - mean)        #calculating the difference between each term and mean value
diffT=diff.loc[(diff<stdevn) == True] #selecting values that are within the standard deviation 
diffT.shape[0]                        #number of values is obtained from the number of records in dataframe
