import pandas as pd
number = { 'numbers' : [73,77,81,86,900,68,28]}
df1=pd.DataFrame(number, columns=['numbers'])
list1=[]
ldiff=0
outlier=df1['numbers'][0]
print(outlier)
for o,k in df1['numbers'].iteritems():
    list1.append(k)
    diff=abs(outlier-k)
    if(diff==0):
        continue
    else:
        if(diff>ldiff):
            ldiff=diff
            if(abs(outlier)<abs(k)):
                outlier=k
    
list1.remove(outlier)
print(list1)
num={'no' : list1}
df2=pd.DataFrame(num,columns=['no'])
print(df2['no'].mean())
