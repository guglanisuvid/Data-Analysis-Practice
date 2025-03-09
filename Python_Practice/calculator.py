first_number = input("Enter the first number: ")
second_number = input("Enter the second number: ")
operator = input("Enter the operator: ")

if operator == "+":
    print("The sum of " + first_number + " and " + second_number + " is " + str(int(first_number) + int(second_number)) + ".")
elif operator == "-":
    print("The difference of " + first_number + " and " + second_number + " is " + str(int(first_number) - int(second_number)) + ".")
elif operator == "*":
    print("The product of " + first_number + " and " + second_number + " is " + str(int(first_number) * int(second_number)) + ".")
elif operator == "/":
    print("The quotient of " + first_number + " and " + second_number + " is " + str(int(first_number) / int(second_number)) + ".")
elif operator == "//":
    print("The floor quotient of " + first_number + " and " + second_number + " is " + str(int(first_number) // int(second_number)) + " and the remainder of is " + str(int(first_number) % int(second_number)) + ".")
else:
    print("Invalid operator.")