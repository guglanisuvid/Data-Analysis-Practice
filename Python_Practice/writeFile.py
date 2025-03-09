lines = ["This is line 1", "This is line 2", "This is line 3"]
with open("writeFile.txt", "w") as file:
    for line in lines:
        file.write(line + "\n")
    file.close()