A, B, C = [int(i) for i in input().split(' ')]

rest = A - B
C_rest = C - rest
if C_rest < 0:
    C_rest = 0

print(C_rest)
