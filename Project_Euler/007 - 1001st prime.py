c=0
sayi=2
asal=1
def isPrime(n):
    for i in range(2,int(n**0.5)+1):
        if n%i==0:
            return False

    return True

while(c<10001):
    if( isPrime(sayi)==True):
        asal=sayi
        c+=1
        
    sayi+=1
print(asal)
