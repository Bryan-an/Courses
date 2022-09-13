class Employee:
    def __init__(self, name, position, salary):
        self.name = name
        self.position = position
        self.salary = salary

    def __str__(self):
        return f"{self.name} works as {self.position} and has a salary of {self.salary} €"


employees_list = [
    Employee("Juan", "Director", 6700),
    Employee("Ana", "President", 7500),
    Employee("Antonio", "Manager", 2100),
    Employee("Sara", "Secretary", 2150),
    Employee("Mario", "Bellhop", 1800)
]


def calculate_commission(employee):
    if employee.salary <= 3000:
        employee.salary = employee.salary * 1.03

    return employee


employees_commission_list = map(calculate_commission, employees_list)

for employee in employees_commission_list:
    print(employee)
