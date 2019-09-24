#!/usr/bin/env python3
import math
import sys
from functools import lru_cache

sys.setrecursionlimit(10 ** 7)

MOD = 1000000007  # type: int


@lru_cache(10000)
def combinations_count(n, r):
    if n - r < 0:
        return 0
    return math.factorial(n) // (math.factorial(n - r) * math.factorial(r))


def solve(N: int, K: int):
    choices = N - K + 1
    for i in range(K):
        print(int(combinations_count(choices, i + 1) * combinations_count(K - 1, i)) % MOD)
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
    solve(N, K)

if __name__ == '__main__':
    main()
