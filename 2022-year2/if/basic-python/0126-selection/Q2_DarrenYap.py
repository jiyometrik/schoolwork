# Name: Darren Yap
# Class: 2i425

score = 0
string = input("Rearrange the string 'wuanednt' to form a word: ")
if string.lower() == "unwanted":
    print(f"Correct! Your score is: {score + 1}")
else:
    print(f"Wrong. Your score is: {score - 1}")
