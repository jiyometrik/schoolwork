# Name: Darren Yap
# Class: 2i425

"""
3. Get the user to enter a string and check that it
is at least 10 characters which consist of only alphabets and numbers.
The user is expected to re-enter the string till it satisfies the criteria.
"""

string = input("enter a string: ")
while len(string) < 10 or not string.isalnum():
    string = input("please re-enter: ")
print("criteria satisfied!")
