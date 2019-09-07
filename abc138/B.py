n = input()
a = input().split(' ')

denom = 0
for i in a:
    denom += (1 / int(i))

print(1 / denom)
