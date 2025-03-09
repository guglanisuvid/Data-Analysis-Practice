num1 = input("Enter the first number: ")
num2 = input("Enter the second number: ")

def greatestCommonDivisor(a, b):
    while b:
        a, b = b, a % b
    return a

print("The greatest common divisor of " + num1 + " and " + num2 + " is " + str(greatestCommonDivisor(int(num1), int(num2))) + ".")