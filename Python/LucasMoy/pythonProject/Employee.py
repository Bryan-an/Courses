from Person import Person


class Employee(Person):
    def __init__(self, name, lastName, dni, phone, salary):
        super().__init__(name, lastName, dni, phone)
        self.salary = salary
