num1 = input("Enter the first number: ")
num2 = input("Enter the second number: ")

def leastCommonMultiple(a, b):
    def greatestCommonDivisor(a, b):
        while b:
            a, b = b, a % b
        return a
    return a * b // greatestCommonDivisor(a, b)

print("The least common multiple of " + num1 + " and " + num2 + " is " + str(leastCommonMultiple(int(num1), int(num2))) + ".")