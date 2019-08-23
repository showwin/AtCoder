import sys

sys.setrecursionlimit(10 ** 7)

row = list(map(int, input().split()))
N, K = row[0], row[1]

result = 0
for i in range(N):
    score = i + 1
    coin_toss_count = 0
    while score < K:
        coin_toss_count += 1
        score = score * 2
    result += (1 / N) * (0.5 ** coin_toss_count)

print(result)
