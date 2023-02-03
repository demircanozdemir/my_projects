# girilen n sayısı kadar satırlı bir pascal üçgeni oluşturan kod

n = int(input("sayiyi girin: "))
d = []
for i in range(n):
    d.append([])
    for j in range(n*2-1):
        d[i].append("_")
p =int(((n*2-1)//2)+1)
#print(p)
for i in range(len(d)):
    d[i][p-i-1] = "1"
    d[i][p+i-1] = "1"

for i in range(2,len(d)):
    for j in range(2,len(d[i])-2):
        #sol ve sag ust cizgi degilse
        if d[i-1][j-1] != "_" and d[i-1][j+1] != "_" :
            d[i][j] = str(int(d[i-1][j-1] ) + int(d[i-1][j+1] ))
 
for i in range(len(d)):
    o=""
    for j in range(len(d[i])):
        o = o+d[i][j]
    print(o)