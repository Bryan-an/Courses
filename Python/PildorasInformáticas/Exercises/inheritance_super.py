class Person:
    def __init__(self, name, age, address):
        self.name = name
        self.age = age
        self.address = address

    def describe(self):
        print(f"Name:  {self.name}\nAge: {self.age}\nAddress: {self.address}")


class Employee(Person):
    def __init__(self, name, age, address, salary, antiquity):
        super().__init__(name, age, address)
        self.salary = salary
        self.antiquity = antiquity

    def describe(self):
        super().describe()
        print(f"Salary: {self.salary}\nAntiquity: {self.antiquity}")


manuel = Person("Manuel", 55, "Colombia")
manuel.describe()
print(isinstance(manuel, Employee))
