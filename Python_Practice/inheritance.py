class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def greet(self):
        print("Hello, my name is " + self.name + ".")

class Student(Person):
    def __init__(self, name, age, studentId):
        super().__init__(name, age)
        self.studentId = studentId

    def study(self):
        print("I am studying.")

student1 = Student("John", 36, "102")
student2 = Student("Jane", 25, "103")
student1.greet()
student1.study()
student2.greet()
student2.study()