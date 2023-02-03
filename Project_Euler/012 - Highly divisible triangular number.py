
def bolenler(n):
    carpanlar = 1
    q= int(n**(1/2)//1)
    for p in range(2,q+1):
        if(n%p==0):
            carpanlar +=2
    if (q**2==n):
        return(carpanlar -1)
    return(carpanlar)

n, sayi =1,1
while (bolenler(sayi)<500):
    n +=1
    sayi+=n
print (sayi)

