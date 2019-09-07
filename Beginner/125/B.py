N = int(input())
v = list(int(i) for i in input().split())
c = list(int(i) for i in input().split())

result = 0
for i in range(N):
    if v[i] > c[i]:
        result += v[i] - c[i]

print(result)
