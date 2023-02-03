#  Bir listeye 0 ile 10 arasında rastgele miktarda 0 ekledikten sonra
#  100den küçük asalları tersten ekliyor. 
# Örn: [0, 97,  0, 0, 0, 0, 89, 0, 0, 0, 0, 0, 0, 0, 83, 0, 0, 0, 0, 0, 79, 0, 0, 0, 73, 0, 0, 71, 0, 67,..]


import random
def allprimes(n):
    primes = list(range(2,n+1,1))
    for x in range(0,int(n/2)+1):
        if(primes[x]!=0):
            for i in range(x+primes[x],n-1,primes[x]):
                primes[i]=0
    primes.sort()
    return(primes[primes.count(0):])
asallar=allprimes(100)
liste=[]
while len(asallar)>0:
    k=random.randint(1,10)
    for i in range (k):
        liste.append(0)
    t=asallar.pop()
    liste.append(t)
print(liste)
