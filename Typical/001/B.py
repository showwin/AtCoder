import copy

ipt = [int(e) for e in input().split(" ")]
n = ipt[0]
q = ipt[1]
results = []

glp = {}
for i in range(n):
    glp[i] = i

for i in range(q):
    # print(i)
    # print(glp)
    q = [int(e) for e in input().split(" ")]
    q_type = q[0]
    a = q[1]
    b = q[2]
    if q_type == 0:
        # 連結
        if glp[a] > glp[b]:
            glp[a] = glp[b]
        else:
            glp[b] = glp[a]
    else:
        # 判定
        if glp[a] == glp[b]:
            results.append("Yes")
        else:
            results.append("No")

for r in results:
    print(r)
