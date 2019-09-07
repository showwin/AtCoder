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

result = 0
for i in range(N - 1):
    if A_n_1[i] <= 0:
        if (i + 1 == N - 1) or A_n_1[i + 1] > 0:
            # 判断する
            _an = An_abs
            _an_pm = -1 if is_N_minus else 1
            _an = _an_pm * _an
            if A_n_1[i] + _an < 0:
                is_N_minus = not is_N_minus  # An に -1 を掛ける
                result += -A_n_1[i]  # ー1 をかけて足す
            else:
                result += A_n_1[i]

        else:
            is_N_minus = not is_N_minus  # An に -1 を掛ける
            result += -A_n_1[i]  # ー1 をかけて足す
    else:
        result += A_n_1[i]

# N番目を足す
_an = An_abs
_an_pm = -1 if is_N_minus else 1
_an = _an_pm * _an
result += _an

print(result)
