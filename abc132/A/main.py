#!/usr/bin/env python3
import sys

YES = "Yes"  # type: str
NO = "No"  # type: str


def solve(S: str):
    s_list = list(S)
    dic = {}
    for st in s_list:
        if st in dic:
            dic[st] += 1
        else:
            dic[st] = 1
    is_ok = True
    for key, val in dic.items():
        if val != 2:
            is_ok = False
    if len(dic) != 2:
        is_ok = False
    if is_ok:
        print(YES)
    else:
        print(NO)
    return


# Generated by 1.1.5 https://github.com/kyuridenamida/atcoder-tools  (tips: You use the default template now. You can remove this line by using your custom template)
def main():
    def iterate_tokens():
        for line in sys.stdin:
            for word in line.split():
                yield word
    tokens = iterate_tokens()
    S = next(tokens)  # type: str
    solve(S)

if __name__ == '__main__':
    main()