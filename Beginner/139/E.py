N = int(input())
_match = {}
for i in range(N):
    _match[i + 1] = [int(j) for j in input().split(' ')]

all_match_count = N * (N-1) // 2
match = []
for p, lst in _match.items():
    result = []
    for t in lst:
        if p > t:
            result.append((t, p))
        else:
            result.append((p, t))
    match.append(result)

today_match = set()
already_finish = set()
result = 0
for _ in range(all_match_count):
    could_make_match = False
    for i in range(N):
        try:
            c = match[i][0]
        except IndexError:
            continue
        if c in already_finish:
            match[i].pop(0)
            try:
                c = match[i][0]
            except IndexError:
                continue
        # 試合が見つかった
        if c in today_match:
            today_match.remove(c)
            already_finish.add(c)
            match[i].pop(0)
            could_make_match = True
        else:
            today_match.add(c)
        #print(today_match, already_finish)
    if not could_make_match:
        result = -1
        break
    result += 1
    #print('day' + str(result))
    print(today_match)
    if len(already_finish) == all_match_count:
        break
    today_match = set()

print(result)
