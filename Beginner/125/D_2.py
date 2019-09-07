import copy
import sys

sys.setrecursionlimit(10 ** 7)

N = int(input())
A = [int(i) for i in input().split(' ')]

# 1 から N-1 を小さい順に並べる
# 負の数が残り1つになるまで -1 を掛ける操作を繰り返す
# 最後の負の数になったときに、足してマイナスになるなら -1 を掛ける

sorted_A = sorted(A)
A_n_1 = sorted(copy.deepcopy(A[:-1]))
An = A[-1]

is_N_minus = True if An < 0 else False
An_abs = abs(An)
