# Name: Darren Yap
# Class: 2i425

# 1. Solicit 2 numbers from the user and print out all the integers in between the range.
a, b = int(input("enter a number: ")), int(input("enter another number: "))
if a < b:
    for i in range(a, b + 1):
        print(i, end=" ")
else:  # if numbers are in reverse
    for l in range(a, b - 1, -1):
        print(l, end=" ")

# 2. Create a program which will produce the times table for a number entered by the user.
n = int(input("\nenter a number to produce the times table of: "))
for j in range(1, 11):
    print(j * n, end=" ")

# 3. Solicit a string from user. Using for loop, count the number of characters in the string excluding space.
s = input("\nenter a string: ")
count = 0
for k in s:
    if k != " ":
        count += 1
print(f"the number of characters in '{s}' is {count} (excluding spaces).")
