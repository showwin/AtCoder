import copy

N = int(input())
p = [int(i) for i in input().split(' ')]

has_changed = False
for i in range(N):
    expect = i + 1
    #print(p)
    #print(p[i], expect)
    if p[i] != expect:
        if has_changed:
            print('NO')
            exit()
        index = p[i] - 1
        if p[index] == expect:
            has_changed = True
            tmp = copy.deepcopy(p[i])
            p[i] = expect
            p[index] = tmp
            # print('change', p[i], p[index])
        else:
            print('NO')
            exit()

print('YES')
