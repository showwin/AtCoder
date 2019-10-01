#!/usr/bin/env python3
import sys

sys.setrecursionlimit(10 ** 7)


def solve(N: int, K: int, S: str):
    S_list = list(S)
    L_num = 0
    R_num = 0
    small_num = 0
    popular_s = ''
    for i in S_list:
        if i == 'L':
            L_num += 1
        else:
            R_num += 1
    if L_num > R_num:
        popular_s = 'S'
        small_num = R_num
    else:
        popular_s = 'R'
        small_num = L_num

    if small_num <= K:
        print(N - 1)
    else:
        # ちゃんと解く
        a = []
        counter = -1
        result = 0
        before_s = ''
        for i in S_list:
            if i != popular_s:
                counter += 1
            else:
                a.append(counter)
                counter = 0
                if before_s == i:
                    result += 1
            before_s = i
        a.append(counter)

        #print(a)
        #print('tmp result', result)

        a_sorted = sorted(a)

        for i in range(K):
            b = a_sorted.pop()
            result += b + 1
        print(result)
    return


# Generated by 1.1.5 https://github.com/kyuridenamida/atcoder-tools  (tips: You use the default template now. You can remove this line by using your custom template)
def main():
    def iterate_tokens():
        for line in sys.stdin:
            for word in line.split():
                yield word
    tokens = iterate_tokens()
    N = int(next(tokens))  # type: int
    K = int(next(tokens))  # type: int
    S = next(tokens)  # type: str
    solve(N, K, S)

if __name__ == '__main__':
    main()