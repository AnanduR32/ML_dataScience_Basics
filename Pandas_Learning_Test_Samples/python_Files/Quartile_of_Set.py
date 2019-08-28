import pandas as pd
number = { 'numbers' : [37,42,48,51,52,53,54,54,55]}
df1=pd.DataFrame(number, columns=['numbers'])
q1=df1['numbers'].quantile(0.25)
q2=df1['numbers'].quantile(0.5)
q3=df1['numbers'].quantile(0.75)
q4=df1['numbers'].quantile(1)
print(q1)
print(q2)
print(q3)
print(q4)
