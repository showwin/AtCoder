inp = [int(i) for i in input().split(' ')]
A = inp[0]
B = inp[1]

result = 0
counter = 1
add = A - 1
while True:
    if counter >= B:
        break
    counter += add
    result += 1
print(result)
