import copy
x = int(input())

candidates = [0]

for i in range(1, x + 1):
    print(candidates)
    new_candidates = []
    for c in copy.deepcopy(candidates):
        new_candidates.append(c)
        new_candidates.append(c+i)
        new_candidates.append(c-i)

    if x in new_candidates:
        print(i)
        break

    candidates = copy.deepcopy(list(set(new_candidates)))
