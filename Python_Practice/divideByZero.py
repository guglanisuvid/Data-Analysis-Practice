try:
    num1 = float(input("Enter the first number: "))
    num2 = float(input("Enter the second number: "))
    result = num1 / num2
    print("The result of the division is: ", result)
except ZeroDivisionError:
    print("Error: You can't divide by zero!")
