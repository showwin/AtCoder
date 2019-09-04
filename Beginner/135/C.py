import copy

N = int(input())
A = [int(i) for i in input().split(' ')]
B = [int(i) for i in input().split(' ')]

result = 0
rest_power = 0
for i in range(N):
    if B[i] > A[i]:
        rest_power = B[i] - A[i]
        result += A[i]
        # 次の街を見る
        mem = copy.copy(A[i + 1])
        A[i + 1] -= rest_power
        if A[i + 1] < 0:
            result += mem
            A[i + 1] = 0
        else:
            result += rest_power
    else:
        result += B[i]

print(result)
