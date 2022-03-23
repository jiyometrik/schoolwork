# Name: Darren Yap
# Class: 2i425

score = int(input("enter your score: "))
if score > 100 or score < 0:
    print("invalid")
# don't need to state other upper-bound (score < 101) condition because using elif
elif score > 74:
    # because elif will only be run if the above conditions are not fulfilled
    print("a1")
elif score > 69:  # example input: 65
    print("a2")  # 1. (score > 100 or score < 0) not fulfilled
elif score > 64:  # 2. (score > 74) not fulfilled
    print("b3")  # 3. (score > 69) not fulfilled
elif score > 59:  # 4. (score > 64) fulfilled => output b3
    print("b4")
elif score > 54:
    print("c5")
elif score > 49:
    print("c6")
else:
    print("fail")
