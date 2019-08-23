import copy
import sys

sys.setrecursionlimit(10 ** 7)

N = int(input())
uvw = [list(map(int, input().split(' '))) for _ in range(N - 1)]

# 適当に最初の色を決める
# その点を親として、
# 親からの距離が偶数だったら親と同じ色
# 親からの距離が奇数だったら親と違う色

children = [[] for _ in range(N + 1)]

for e in uvw:
    children[e[0]].append([e[1], e[2]])
    children[e[1]].append([e[0], e[2]])

pool = [1]
result = [0 for i in range(N + 1)]  # 頂点1は白くする

marked = set()
marked.add(1)

while pool:
    top = pool.pop()
    for child in children[top]:
        child_edge = child[0]
        length = child[1]

        if child_edge not in marked:
            pool.append(child_edge)
            marked.add(child_edge)
        if length % 2 == 0:
            result[child_edge] = 0 if result[top] == 0 else 1
        else:
            result[child_edge] = 1 if result[top] == 0 else 0

for i in result[1:]:
    print(i)
