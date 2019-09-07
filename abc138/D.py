from collections import defaultdict


def set_child(from_p) -> int:
    global effect_list
    global start_edge_list
    effect_list[from_p].add(from_p)
    if from_p not in start_edge_list:
        return effect_list[from_p]
    for edge in edge_list:
        if from_p == edge[0]:
            effect_list[from_p].add(edge[1])
            children = set_child(edge[1])
            if children:
                for j in children:
                    effect_list[from_p].add(j)
        if from_p < edge[0]:
            return effect_list[from_p]
    return effect_list[from_p]


N, Q = input().split(' ')
N = int(N)
Q = int(Q)
ab = [input().split(' ') for i in range(N - 1)]
px = [input().split(' ') for i in range(Q)]

edge_list = sorted(ab)
start_edge_list = [e[0] for e in edge_list]

effect_list = defaultdict(lambda: set())  # key: pi, value: piから影響を受ける頂点すべて
index = 0
for i in range(N):
    top_n = i + 1
    set_child(str(top_n))

result = [0 for i in range(N)]
for impact in px:
    top_n = impact[0]
    val = int(impact[1])

    if top_n in effect_list:
        for target in effect_list[top_n]:
            result[int(target) - 1] += val

result_str = [str(i) for i in result]
print(' '.join(result_str))
