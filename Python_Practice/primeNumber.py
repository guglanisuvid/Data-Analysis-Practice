num = input("Enter a number: ")

def isPrime(n):
    if n < 2:
        return False
    for i in range(2, n):
        if n % i == 0:
            return False
    return True

if isPrime(int(num)):
    print(num + " is a prime number.")
else:
    print(num + " is not a prime number.")