def RemDupLoop(lst):
    ans = []
    for item in lst:
        if item not in ans:
            ans.append(item)
    return ans

def RemDupSet(lst):
    ans = set(lst)
    return list(ans)

lst = input('Enter a list of space-separated items: ').split()
print('Output of RemDupLoop: ', RemDupLoop(lst))
print('Output of RemDupSet: ', RemDupSet(lst))