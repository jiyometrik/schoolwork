# Name: Darren Yap
# Class: 2i425

"""
1. Print out all the multiples of 4 between -50 and 50.
"""
counter = -50
while counter <= 50:
    if counter % 4 == 0:
        print(counter, end=' ')
    counter += 1
print()

"""
2. Write a program that will add together a series of numbers
until the user enters a value of 0. The program will then display the total.
"""
num, total = 1, 0
while num != 0:
    num = int(input("enter a number: "))
    total += num
print(f"the total is: {total}") 
