# def is_even(num):
#     if num % 2 == 0:
#         return True


# numbers = [17, 24, 7, 39, 8, 51, 92]

# print(list(filter(lambda number: number % 2 == 0, numbers)))

class Employee:
    def __init__(self, name, position, salary):
        self.name = name
        self.position = position
        self.salary = salary

    def __str__(self):
        return f"{self.name} works as {self.position} and has a salary of {self.salary} €"


employees_list = [
    Employee("Juan", "Director", 750000),
    Employee("Ana", "President", 850000),
    Employee("Antonio", "Manager", 25000),
    Employee("Sara", "Secretary", 27000),
    Employee("Mario", "Bellhop", 21000)
]

high_salaries = filter(lambda employee: employee.salary >
                       50000, employees_list)

for employee in high_salaries:
    print(employee)
