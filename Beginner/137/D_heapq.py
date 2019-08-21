import sys
from heapq import heappop, heappush

sys.setrecursionlimit(10 ** 7)

n, m = input().split(' ')
N = int(n)
M = int(m)

sorted_ab = sorted([list(map(int, input().split())) for i in range(N)])

# 報酬がi日後までにもらえるタスクの中(pool)で報酬が最大ものを選んでいく。
# 最大 M-1 回働ける
index = 0
pool = []
rewords = 0
for i in range(M):
    day = i + 1

    while index < N and day >= int(sorted_ab[index][0]):
        heappush(pool, -sorted_ab[index][1])
        index += 1
    # pool の中にある仕事の中から最大の報酬のものを選ぶ
    if pool:
        rewords += -heappop(pool)

print(rewords)
