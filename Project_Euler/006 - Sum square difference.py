sumsq=0
sqsum=0
for i in range(1,101):
    sumsq+= i**2
for j in range(1,101):
    sqsum+=j
print(sqsum**2 - sumsq)
