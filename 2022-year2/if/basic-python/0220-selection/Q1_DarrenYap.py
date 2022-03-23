# Name: Darren Yap
# Class: 2i425


def check(final_str):
    if num % 5 == 0 and num % 7 != 0:
        final_str += "the number is a multiple of 5 but not divisible by 7"
    elif num % 5 != 0 and num % 7 == 0:
        final_str += "the number is not a multiple of 5 but divisible by 7"
    elif num % 5 == 0 and num % 7 == 0:
        final_str += "the number is both a multiple of 5 and divisble by 7"
    elif num % 5 != 0 and num % 7 != 0:
        final_str += "the number is not a multiple of 5, nor divisble by 7"
    print(final_str)


num = int(input("enter a number (between 1-100): "))
if num > 100 or num < 0:
    final_str = "the number is out of range. "
    check(final_str)
else:
    final_str = "the number is in range. "
    check(final_str)
