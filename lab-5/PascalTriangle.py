def printTriangle(n):
    row = [1]
    for i in range(1, n+1):
        print(' '*(n-i), end = ' ')
        print(*row)
        #for j in range(len(row)):
         #   print(row[j], end = ' ')
        #print()
        nextrow = [row[j-1]+row[j] for j in range(1, len(row))]
        row = [1] + nextrow + [1]


n = int(input('Enter number of lines: '))
printTriangle(n)