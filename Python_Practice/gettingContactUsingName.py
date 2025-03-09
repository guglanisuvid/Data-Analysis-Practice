dic = {
    "alice": "123-456",
    "bob": "789-123",
    "charlie": "456-789",
    "david": "789-456"
}

name = input("Enter the name: ")
print("The contact number of " + name + " is " + dic[name] + ".")