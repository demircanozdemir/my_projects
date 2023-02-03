##hem ardışık hem de collatz değerleri eşit olan sayıları veren kod (1000e kadar)
liste=[]
a, b= 0, 1
cmax, pmax =1, 1
COL=[0,1]
r=0
for p in range (2, 1000):
    n=p
    c=1
    liste.append(p)
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
        
for i in range(len(liste)):
    if ( b < len(liste) ):
        if( COL[a] == COL[b] ):
            print( liste[a]-2, liste[b]-2)
            r=r+1
            a=b
            b=b+1
        else:
            a=b
            b=b+1
    else:
        print("bitti")
        print(r, " tane çift var.")

