import copy
import itertools

lst = [int(e) for e in input().split(" ")]
n = lst[0]
k = lst[1]

a = sorted([int(e) for e in input().split(" ")])

result_num = 0


def test(target):
    """
    True => いらない
    False => ひつよう
    """
    result = False
    tst_list = copy.deepcopy(a)

    if target >= len(tst_list):
        return False

    v = tst_list.pop(target)

    for i in range(len(tst_list)):
        c = list(itertools.combinations(tst_list, i))
        for e in c:
            if k - v <= sum(e):
                if sum(e) >= k:
                    continue
                else:
                    return False
    else:
        return True

    return False

count = 1
i = int(len(a) / 2)

last_true = 0

hey = False

while True:
    result = test(i)
    if result:
        # 進む
        new_i = i + int(len(a) / (2**count))
        if last_true < i + 1:
            last_true = i + 1
    else:
        # 戻る
        new_i = i - int(len(a) / (2**count))

    if new_i == i:
        if test(i + 1):
            if last_true < i + 1 + 1:
                last_true = i + 1 + 1
        if test(i - 1):
            if last_true < i:
                last_true = i
        break

    count += 1

    i = new_i

"""
for i in range(len(a)):
    result = test(i)
    if result:
        result_num += 1
"""

if last_true >= len(a):
    print(len(a))
else:
    print(last_true)
