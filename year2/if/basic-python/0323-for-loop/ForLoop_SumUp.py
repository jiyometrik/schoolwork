"""
Given a number (n) the user enters, and the subsequent n numbers,
compute the sum of all the n numbers the user enters.
"""

n = int(input("how many numbers do you want to add? "))
total = 0
for i in range(n):
    num = int(input("enter a number: "))
    total += num
print(f"the total is: {}", total)
