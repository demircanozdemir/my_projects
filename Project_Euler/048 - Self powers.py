c=0
for  i in range (1,1000):
    c+=i**i
#for i in range(10,1000,10):
#    c=c-(i**i)
##print(c)
LIST=list(str(c))
a=LIST[-10:]
##print(a)

x=10**9
ans=0
for i in range(10):
    ans+=int(a[i])*int(x)
    x=x/10
print(ans)


#9110846700
