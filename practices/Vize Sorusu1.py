# Uzaylı istilası var
#100 yaşından büyük herkes yaşar(max. 128)
#100 yaşından küçük olanlar 
c=29
for n in range(1,100):
    if(n==2 or n==3 or n==5 or n==7):
        for i in range(1,10):
            for a in range (1,10):
                if (a >=i):
                     if(n==(i**2)+(a**2)):
                         c=c+1
                         print(n, "yaşar. (", i, ", ",  a, ")"   )
         
    if((((n/2)//1)*2==n) or (((n/3)//1)*3==n) or (((n/5)//1)*5==n) or (((n/7)//1)*7==n)):        
        continue
        
    else:
        for i in range(1,10):
            for a in range (1,10):
                if (a >=i):
                     if(n==(i**2)+(a**2)):
                         c=c+1
                         print(n, "yaşar. (", i, ", ",  a, ")"   )
         
print(c, "farklı yaş grubu yaşayacak.")

