import random

def conv(n,k,m): # '*' ile sansürlenmiş kelimeyi tahmin edildikçe harflerini açan fonksiyon
    t=[]                  # sansürlenmiş halini'(n)' alıyor ve her bir karakteri liste elemanı olarak 
    for i in n:           # tutuyor(t). Kelimedeki harfleri 'k[j]' dolaşıyor ve tahmin edilen harf ile eşleşen 
        t.append(i)       # olursa  t listesinde o karakteri görünür hale getiriyor. en son t listesindeki karakterleri
                          # birleştirip geriye string döndürüyor.
    for j in range(len(t)):
        if k[j] == m:
            t[j] = m
    f=""
    for p in range(len(t)):
        f = f + t[p]

    return f
file = open(r"words.txt",encoding="utf8").readlines() 
allwords = [] #words dosyasındaki kelimeler
#seviye eklemesi için gerekli olacak
#w3,w4, w5, w6, w7, w8, w9, w10, w11, otr  = [],[],[],[],[],[],[],[],[],[]

for i in range(len(file)):
    file[i] = file[i][:-1]
    allwords.append(file[i])
    # seviye eklenirse gerekli olacak kısımlar; kelimeleri uzunluklarına göre ayırma
    # if len(file[i]) == 3:
    #     w3.append(file[i])
    # elif len(file[i]) == 4:
    #     w4.append(file[i])
    # elif len(file[i]) == 5:
    #     w5.append(file[i])
    # elif len(file[i]) == 6:
    #     w6.append(file[i])
    # elif len(file[i]) == 7:
    #     w7.append(file[i])
    # elif len(file[i]) == 8:
    #     w8.append(file[i])
    # elif len(file[i]) == 9:
    #     w9.append(file[i])
    # elif len(file[i]) == 10:
    #     w10.append(file[i])
    # elif len(file[i]) == 11:
    #     w11.append(file[i])
    # else:
    #     otr.append(file[i])

while(1==1):
    ln = random.randint(0,len(allwords))  # rastgele bir kelime seçme
    kel = allwords[ln].upper()
    d="" 

    for i in range(len(kel)): #kelime uzunluğunda '*'ı oluşturma
        d = d+"*"
    c = 9

    while(c>0): # tahmin hakkımız c ile tutuluyor ve 0dan büyük olduğu sürece tahmin edebiliriz
        print(d)
        print(f"Kalan hakkınız: {c}")
        tahmin = input("tahmin yapin: ").upper()
        if (kel.count(tahmin)>0):
            d=conv(d,kel,tahmin) #   tahmin edilen harf kelimenin içerisinde var ise conv foksiyonunda
                                 # o harfler açılıp kelime geri döndürülüyor. örn: A, **** -> *A*A
        else:
            c -=1
        if d.count("*") ==0: # canımızı bitirmeden kelimeyi tahmin edebilmişsek döngüyü sonlandırıyoruz
            break


    if c>0: ##  tahmin hakkımız var iken döngüden çıkmışsak oyunu kazanmışızdır
        print(f"Kelime: {kel}\n KAZANDINIZ")
        #print(f"{9-c}. seferde buldunuz!")
    else:
        print("maalesef, kelime: ", kel," idi")

    opt = input("Yeni oyun? (y/n)\n")
    if opt == "n" or opt == "N":
        break