n = input()
score = list(input())

result = 0
for i in score:
    if i == 'A':
        result += 4
    elif i == 'B':
        result += 3
    elif i == 'C':
        result += 2
    elif i == 'D':
        result += 1

print(result/int(n))
