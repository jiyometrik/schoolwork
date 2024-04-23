# Name: Darren Yap
# Class: 2i425
# Filename: DarrenYap_P.py

inp = input("Enter a string: ")
result = ""

for i in inp:
    # x, y, and z, when shifted forward three places,
    # must return to A, B, and C, so we have to check that the
    # character is x, y, and z then implement the special case
    char = ord(i) - 29 if ord(i) + 3 < 123 else ord(i) - \
        55  # must be uppercase
    result += chr(char)
print(result)
