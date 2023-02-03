def palindrome(n):
    a=list(str(n))
    k=0
    for i in range(len(a)):
        k=k+int(a[i])*(10**i)
    if(k== n):
        return True
    else:
        return False

ebp=0

for a in range(999,99,-1):
    for b in range(a,99,-1):
        t=a*b
        if(palindrome(t)==True):
            if(t>ebp):
                ebp=t
print(ebp)
