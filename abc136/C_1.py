N = int(input())
H = [int(i) for i in input().split()]

is_break = False
for i in range(N - 1):
    j = N - i - 1
    if H[j - 1] > H[j]:
        H[j - 1] -= 1
    if H[j - 1] > H[j]:
        is_break = True

if is_break:
    print('No')
else:
    print('Yes')
