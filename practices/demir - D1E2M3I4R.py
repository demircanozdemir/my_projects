#ahmet    ->  A1H2M3E4T
#abdullah ->  A1B2D3U4L5L6A7H

def strPattern(mystr):
    mystr=mystr.upper()
    str_list=list(mystr)
    answer=[]
    k=' '
    for i in range(len(str_list)):
        answer.append(str_list[i])
        answer.append(i+1)
    
    for i in range(len(answer)-1):
        answer[i]=str(answer[i])
        k=k+answer[i]
    return k
    
n=input("enter string: ")
print(strPattern(n))