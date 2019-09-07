import itertools

N = int(input())

engines = []
for i in range(N):
    s = input().split(' ')
    x = int(s[0])
    y = int(s[1])
    engines.append([x, y])

def get_length(e_list):
    if len(e_list) == 0:
        return 0
    c = []
    for i in range(len(e_list) - 1):
        x = 0
        y = 0
        for v in itertools.permutations(e_list, i + 1):
            print(v)
            x += v[0][0]
            y += v[0][1]
        r = x*x + y*y
        c.append(r)
    return max(c)

result = []
# 第一象限
candidate = []
for i in engines:
    if i[0] > 0 or i[1] > 0:
        candidate.append(i)

result.append(get_length(candidate))
# 第二証言  y  を -にする
candidate = []
for i in engines:
    if i[0] > 0 or i[1] < 0:
        j = [i[0], -i[1]]
        candidate.append(j)

result.append(get_length(candidate))

# 第三証言 x を - にする

candidate = []
for i in engines:
    if i[0] < 0 or i[1] > 0:
        j = [-i[0], i[1]]
        candidate.append(j)
result.append(get_length(candidate))

# 第四象限
candidate = []
for i in engines:
    if i[0] < 0 or i[1] < 0:
        j = [-i[0], -i[1]]
        candidate.append(j)

result.append(get_length(candidate))

print(max(result))
