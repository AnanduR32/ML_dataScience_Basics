import pandas as pd
number = { 'numbers' : [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]}
df1=pd.DataFrame(number, columns=['numbers'])
i=2
flag=0
list1=[]
for o,k in df1['numbers'].iteritems():
    i=2
    half=k//2
    flag=0
    while(i<=half):
        if(k%i==0):
            flag=1
            break
        i+=1         
    if(flag==0):
        list1.append(k)
list1.remove(1)
print(list1)

num={'no' : list1}
df2=pd.DataFrame(num,columns=['no'])
print(df2['no'].mean())
