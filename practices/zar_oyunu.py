# Bir zar oyununda iki zar atılıyor ve iki zarın üst yüzeyindeki rakamlar toplanıyor;
# Eğer toplam 5,7,8 veya 10 ise oyuncu oyunu doğrudan kazanır,
# Eğer toplam 3,6 veya 12 ise oyuncu oyunu kaybeder ve oyun biter,
# Diğer durumlarda zardan elde edilen puan toplama eklenir ve tekrar zar atılır.

import  random
def throw():
    a=random.randint(1,6)
    b=random.randint(1,6)
    sum=a+b
    return sum
point=0
c=0
while(1==1):
    r=throw()
    c+=1
    if(r==5 or r==7 or r==8 or r==10):
        point+=r
        print("WIN, point: ", point)
        break
    elif(r==3 or r==6 or r==12):
        point+=r
        print("LOST, point: ",point)
        break
    else:
        point+=r
print(c," times throwen.")
