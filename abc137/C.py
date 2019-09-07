import copy
import math
import sys

sys.setrecursionlimit(10 ** 7)

N = int(input())
s_list = [input() for i in range(N)]


def split(word):
    return [char for char in word]


normalized_s_list = sorted([''.join(sorted(split(s))) for s in s_list])

uniqued_s_list = sorted(list(set(normalized_s_list)))

j = 0
counter = 0
result = 0
for s in normalized_s_list:
    if s == uniqued_s_list[j]:
        counter += 1
    else:
        result += (1 / 2) * counter * (counter - 1)
        j += 1
        counter = 1  # このとき s と uniqued_s_list[j] は同じはずなので

result += (1 / 2) * counter * (counter - 1)
print(int(result))
