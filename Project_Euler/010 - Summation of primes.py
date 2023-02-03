def isPrime(n):
    for i in range(2,int(n**0.5)+1):
        if(n%i==0):
            return False
    return True

toplam=0
i=2
while(i<2000000):
    if(isPrime(i)==True):
#        print(i)
        toplam+=i
    i+=1
print(toplam)
