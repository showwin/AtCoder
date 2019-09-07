N = int(input())
H = [int(i) for i in input().split(' ')]

last_i = len(H) - 1
last_high = 100000000000
counter = 0
best = 0
for j in range(len(H)):
    i = last_i - j
    if H[i] >= last_high:
        counter += 1
        last_high = H[i]
    else:
        if best < counter:
            best = counter
        counter = 0
        last_high = H[i]

if best < counter:
    best = counter

print(best)
