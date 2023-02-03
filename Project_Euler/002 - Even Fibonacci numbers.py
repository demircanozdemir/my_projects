fn1, fn2= 1, 1
fn3=0
toplam=0
while(fn3<4000000):
    fn3= fn1+ fn2
    fn1= fn2
    if ((fn1//2)*2==fn1):
            toplam+=fn1
    fn2=fn3
    print(fn1)
print("ciftlerin toplami: ", toplam)
