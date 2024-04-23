"""
Given a starting and an ending number,
print out the times table for each of the numbers
in the range (inclusisve).
"""

x, y = int(input("start: ")), int(input("end: "))

if x <= y:
    for num in range(x, y + 1):
        for times in range(1, 11):
            print(times * num, end=' ')
        print()
else:
    for num in range(y, x + 1):
        for times in range(1, 11):
            print(times * num, end=' ')
        print()
