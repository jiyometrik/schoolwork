# Name: Darren Yap
# Class: 2i425
# Filename: testQ7_DarrenYap.py

"""
Write a program which accepts an integer, n,
and computes the value of n - 10n + nnn.

Sample:
> 5
< 510

Explanation: 5 - 50 + 555 = 510.
"""

n = int(input("enter a number: "))
nnn = int(str(n) * 3)
print(f"{n} - {n * 10} + {nnn} = {n - n * 10 + nnn}")
