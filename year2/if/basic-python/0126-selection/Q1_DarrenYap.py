# Name: Darren Yap
# Class: 2i425

a, b = int(input("enter a number: ")), int(input("enter another number: "))
x = 0
y = 0

if a > b:
    x = a ** 2
    y = b * 2
else:
    x = b ** 2
    y = a * 2

print(f"the result is: {x - y}")
