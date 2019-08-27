N = int(input())
H = [int(i) for i in input().split()]

H_shifted = [0 for i in range(N)]

h_n_1 = 0
is_break = False
for i, h_i in enumerate(H):
    if h_n_1 > h_i:
        if H_shifted[i - 1] == 0:
            h_n_1 -= 1
        if h_n_1 > h_i:
            is_break = True
            break
        else:
            # ここでは同じ高さになっているはずで、これ以上下げられない
            H_shifted[i] = 1
    if h_n_1 == h_i:
        # 同じ高さになっているはずで、これ以上下げられない
        H_shifted[i] = 1
    if h_n_1 < h_i:
        # 低くできる場合にはしておく
        H_shifted[i] = 1
        h_n_1 = h_i - 1
    else:
        h_n_1 = h_i


if is_break:
    print('No')
else:
    print('Yes')
