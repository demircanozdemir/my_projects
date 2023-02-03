#girilen sayının simetrik olup olmadığını döndüren fonksiyon

def palindrome(n):
    a=list(str(n))
    k=0
    for i in range(len(a)):
        k=k+int(a[i])*(10**i)
    if(k== n):
        return True
    else:
        return False
n=int(input("bir sayi girin: "))

print(palindrome(n))
