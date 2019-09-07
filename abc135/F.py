import sys

sys.setrecursionlimit(10 ** 7)

s = input()
t = input()

target_s = s + s


def get_match_count(s_strrr, t_str):
    result = [0]
    result_counter = 0
    t_index = 0
    for s_str in list(s_strrr):
        if t_index == len(t_str):
            t_index = 0
            result_counter += 1
        if s_str == t_str[t_index]:
            t_index += 1
        else:
            result.append(result_counter)
            result_counter = 0
    if t_index == len(t_str):
        result_counter += 1
    result.append(result_counter)
    return max(result)


while len(target_s) < len(t):
    target_s += s

if t not in target_s:
    print('0')
else:
    result = get_match_count(target_s, t)

    if result == len(target_s) // len(t):
        print(-1)
    elif result * len(t) + len(t) == len(target_s):
        print(-1)
    else:
        print(result)
