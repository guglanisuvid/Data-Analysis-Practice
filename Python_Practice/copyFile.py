with open("writeFile.txt", "r") as file1:
    contents = file1.read()

with open("copyFile.txt", "w") as file2:
    file2.write(contents)