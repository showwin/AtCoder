import time
# ちょっとミスってる
# 深さ優先探索
h, w = [int(e) for e in input().split(" ")]
_map = [None] * h
searched = [None] * h
finished = [None] * h
at_x = 0
at_y = 0
for i in range(h):
    _map[i] = list(input())
    searched[i] = [None] * h
    finished[i] = [None] * h
    if 's' in _map[i]:
        at_y = i
        at_x = _map[i].index('s')

success_flg = False

searched[at_y][at_x] = 1


def go(x, y):
    if x >= h or x < 0 or y >= h or y < 0:
        return False
    elif _map[y][x] == '#':
        return False
    elif finished[y][x] == 1:
        return False
    elif searched[y][x] == 1:
        return False
    else:
        # print("GO")
        return True


def go_back(x, y):
    if x >= h or x < 0 or y >= h or y < 0:
        return False
    if finished[y][x] != 1 and searched[y][x] == 1:
        # print("GO Back")
        return True
    else:
        return False


while True:
    # print([at_x, at_y])
    # print(searched)
    # print(finished)
    # print("\n")
    if go(at_x + 1, at_y):
        at_x += 1
        searched[at_y][at_x] = 1
    elif go(at_x - 1, at_y):
        at_x -= 1
        searched[at_y][at_x] = 1
    elif go(at_x, at_y + 1):
        at_y += 1
        searched[at_y][at_x] = 1
    elif go(at_x, at_y - 1):
        at_y -= 1
        searched[at_y][at_x] = 1
    else:
        finished[at_y][at_x] = 1
        if go_back(at_x + 1, at_y):
            at_x += 1
        elif go_back(at_x - 1, at_y):
            at_x -= 1
        elif go_back(at_x, at_y + 1):
            at_y += 1
        elif go_back(at_x, at_y - 1):
            at_y -= 1
        elif _map[at_y][at_x] == 's':
            break

    if _map[at_y][at_x] == 'g':
        success_flg = True
        break

    # time.sleep(0.3)

if success_flg:
    print("Yes")
else:
    print("No")
