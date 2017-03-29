n = int(input())
lst = [int(e) for e in input().split(' ')]

lst = sorted(lst)
result = 1

valid_list = []
if n % 2 == 1:
    # 奇数
    valid_list.append(0)
    for i in range(1, int((n + 1) / 2)):
        valid_list.append(i * 2)
        valid_list.append(i * 2)
    if lst == valid_list:
        for i in range(int((n - 1) / 2)):
            result = (result * 2) % 1000000007
        print(int(result))
    else:
        print(0)
else:
    for i in range(1, int((n / 2) + 1)):
        valid_list.append((i * 2) - 1)
        valid_list.append((i * 2) - 1)
    if lst == valid_list:
        for i in range(int(n / 2)):
            result = (result * 2) % 1000000007
        print(int(result))
    else:
        print(0)
