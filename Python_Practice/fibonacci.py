num = input("Enter a number: ")

def fibonacci(n):
    if n == 0:
        return 0
    if n == 1:
        return 1
    else:
        a, b = 0, 1
        for i in range(n-2):
            a, b = b, a+b
        return b
    
print("The " + num + "th Fibonacci number is " + str(fibonacci(int(num))) + ".")
    
