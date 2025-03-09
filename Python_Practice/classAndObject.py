class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def greet(self):
        print("Hello, my name is " + self.name + ".")

Person1 = Person("John", 36)
person2 = Person("Jane", 25)
Person1.greet()
person2.greet()