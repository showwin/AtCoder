N = int(input())

result = 0
if N >= 10:
    result += 9
else:
    result += N

if N >= 1000:
    result += 900
elif N >= 100:
    result += N - 99

if N >= 100000:
    result += 90000
elif N >= 10000:
    result += N - 9999

print(result)
