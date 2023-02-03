#  Bir listeye 0 ile 10 arasında rastgele miktarda 0 ekledikten sonra
#  sırayla 2'nin kuvvetlerini ekliyor. 
# Örn: [0,0,0,1,0,0,0,0,0,2,0,0,0,0,0,0,0,4,0,0,0,0,8,0,16,32]

import random
liste=[0]
i=0
while(i<12):
    k=random.randint(0,1)
    if k==0:
        for j in range (random.randint(1,10)):
            if liste[-10:]==[0,0,0,0,0,0,0,0,0,0]:
                continue
            else:
                liste.append(0)
    else:
        liste.append(2**i)
        i+=1
print(liste)