# 1 ile 100 arasında bir sayı oluşturluyor ve onu tahmin etmeye çalışıyoruz

import random
def oyna():
	print("      ***Oyun Basladi!!***      ")
	sayi = random.randint(1,101)
	c = 0
	while(True):
		tahmin = int(input("Tahmininizi girin: "))
		c += 1
		if( tahmin == sayi ):
			print("Dogru tahmin! ", c,". seferde bildiniz.")
			break
		elif ( tahmin > sayi ):
			print("Daha kucuk bir tahmin yapin!")
		else:
			print("Daha buyuk bir tahmin yapin!")
kosul = "e"
while(kosul == "e"):
	oyna()
	print("oynamak için 'e', cikmak için 'q' " )
	kosul = input()
print("oyun sonlandi")