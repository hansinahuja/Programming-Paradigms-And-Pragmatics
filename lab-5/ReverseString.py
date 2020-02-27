def reverseString(line):
    print('Reversed string: ', end = ' ')
    words = line.split(' ')
    for word in reversed(words):
        print(word, end = ' ')

line = input('Enter string: ')
reverseString(line)