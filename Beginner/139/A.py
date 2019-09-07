S = list(input())
T = list(input())

result = 0
for i, st in enumerate(S):
    if S[i] == T[i]:
        result += 1

print(result)
