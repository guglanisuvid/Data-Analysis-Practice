num1 = input("Enter the first number: ")
num2 = input("Enter the second number: ")
num3 = input("Enter the third number: ")
if int(num1) > int(num2) and int(num1) > int(num3):
    print(num1 + " is the largest number.")
elif int(num2) > int(num1) and int(num2) > int(num3):
    print(num2 + " is the largest number.")
else:
    print(num3 + " is the largest number.")