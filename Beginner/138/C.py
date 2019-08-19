n = int(input())
v = [int(i) for i in input().split(' ')]

v_sorted = sorted(v)

value = v_sorted[0]
for i, _ in enumerate(v_sorted[:-1]):
    value = (value + v_sorted[i + 1]) / 2

print(value)
