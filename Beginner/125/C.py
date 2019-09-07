N = int(input())
A = [int(i) for i in input().split()]

if len(A) > 1:
    result = sorted(A)[1]
else:
    result = min(A)

while True:
    counter = 0
    should_continue = False
    for e in A:
        if e % result != 0:
            counter += 1
            if counter > 1:
                should_continue = True
                break
    if should_continue:
        result -= 1
        continue
    if counter <= 1:  # 1つは書き換えられる
        break
    else:
        result -= 1

print(result)
