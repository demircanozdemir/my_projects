cmax, pmax =1, 1
COL=[0,1]
for p in range (2, 1000000):
    n=p
    c=1
    while(n!=1):
        if(n%2==0):
            n=n/2
        else:
            n = 3*n +1
        if(n<p):
            c=c+COL[int(n)]
            COL.append(c)
            break
        c +=1
        
    if(c>cmax):
        cmax=c
        pmax=p
print(pmax)
#print(COL)
#çalıştır
