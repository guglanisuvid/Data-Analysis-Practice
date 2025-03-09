try:
    with open("fileNotFound.txt") as file:
        print(file.read())
except FileNotFoundError:
    print("Error: File not found")