def kural(n):
    c=0
    for i in range(2,11):
        if n%i != 0:
            c+=1
    if c!= 0:
        return False
    else:
        return True
        
n = 9699690
while n:
    if kural(n)==True:
        print(n)
        break
    n+=1
