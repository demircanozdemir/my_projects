def fact(n):
    fact=1
    for i in range(1,n):
        fact+=fact*i
    return fact
x,y=20,20
print(int(fact(x+y)/(fact(x)*fact(y))))
