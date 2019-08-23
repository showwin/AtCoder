import copy
import sys

sys.setrecursionlimit(10 ** 7)

N = int(input())
uvw = [list(map(int, input().split(' '))) for _ in range(N - 1)]

# 適当に最初の色を決める
# その点を親として、
# 親からの距離が偶数だったら親と同じ色
# 親からの距離が奇数だったら親と違う色

top = 1
result = [0 for i in range(N)]
uvw = sorted(uvw)

for e in uvw:
    if top == e[0]:
        uvw.remove(e)
        pool.append(e[1])
        if e[2] % 2 == 0:
            # 親と同じ色を入れる
            result[e[1] - 1] = 0 if result[e[0] - 1] == 0 else 1
        else:
            # 親と違う色を入れる
            result[e[1] - 1] = 1 if result[e[0] - 1] == 0 else 0
    elif top == e[1]:
        uvw.remove(e)
        pool.append(e[0])
        if e[2] % 2 == 0:
            # 親と同じ色を入れる
            result[e[0] - 1] = 0 if result[e[1] - 1] == 0 else 1
        else:
            # 親と違う色を入れる
            result[e[0] - 1] = 1 if result[e[1] - 1] == 0 else 0

for i in result:
    print(i)
