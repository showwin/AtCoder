s = input().split(' ')
A = int(s[0])
B = int(s[1])

if (A + B) % 2 == 1:
    print('IMPOSSIBLE')
else:
    print((A + B) // 2)
