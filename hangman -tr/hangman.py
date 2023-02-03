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

for i in range(len(file)):
    file[i] = file[i][:-1]
    allwords.append(file[i])
 

while(1==1):
    
    # rastgele bir kelime seçme
    ln = random.randint(0,len(allwords))  
    kel = allwords[ln].upper()
    d="" 
    
    #kelime uzunluğunda '*'ı oluşturma
    for i in range(len(kel)): 
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
   
    else:
        print("maalesef, kelime: ", kel," idi")
    
    opt = input("Yeni oyun? (y/n)\n")
    if opt == "n" or opt == "N":
        break
