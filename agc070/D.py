import itertools

lst = [int(e) for e in input().split(" ")]
n = lst[0]
k = lst[1]

a = [int(e) for e in input().split(" ")]

result_num = 0

if k > sum(a):
    result_num = len(a)
else:
    for i in range(1, n):
        c = list(itertools.combinations(a, i))
        for e in c:
            if k <= sum(e):
                result_num += 1


print(result_num)
