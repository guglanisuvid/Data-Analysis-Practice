string = input("Enter a string: ")
vowels = "aeiouAEIOU"
count = sum(1 for i in string if i in vowels)
print("The number of vowels in the string is " + str(count) + ".")