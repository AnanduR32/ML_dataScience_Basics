import pandas as pd 
number = { 'numbers' : [37,42,48,51,52,53,54,54,55]}
df=pd.DataFrame(number, columns=['numbers'])
mean=df['numbers'].mean()
devn=df['numbers'] - mean
sqDevn=devn ** 2
variance=sqDevn.mean()
print(variance)
