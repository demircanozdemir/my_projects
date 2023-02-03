def isPrime(n):
    for i in range(2,int(n**0.5)+1):
        if n%i==0:
            return False

    return True
#-----------------------------------------------------#

mp=600851475143
n, ebab= 2, 0
while(mp!=1):
    if( isPrime(n)==True ):
        if( mp%n==0 ):
            ebab=n
            mp=mp/n
            print(ebab)
    n+=1

