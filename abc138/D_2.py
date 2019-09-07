from collections import defaultdict

N, Q = input().split(' ')
N = int(N)
Q = int(Q)
ab = [input().split(' ') for i in range(N - 1)]
px = [input().split(' ') for i in range(Q)]

edge_list = sorted(ab)
start_edge_list = [e[0] for e in edge_list]

effect_weight = defaultdict(lambda: 0)
for impact in px:
    top_n = impact[0]
    val = int(impact[1])
    effect_weight[top_n] += val

result = [0 for i in range(N)]
for top_n, weight in effect_weight.items():
    result[int(top_n) - 1] = weight

weight_me = []

for effect in ab:
    e_from = effect[0]
    e_to = effect[1]
    weight = result[int(e_from) - 1]
    result[int(e_to) - 1] += weight

result_str = [str(i) for i in result]
print(' '.join(result_str))
