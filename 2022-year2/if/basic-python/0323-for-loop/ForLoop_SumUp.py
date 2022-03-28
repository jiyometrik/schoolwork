"""
Given a number (n) the user enters, and the subsequent n numbers,
compute the sum of all the n numbers the user enters.
"""

n = int(input("how many numbers do you want to add? "))
total = 0
for i in range(1, n + 1):
    num = int(input(f"[{i}]: "))
    total += num
print(f"total: {total}")
