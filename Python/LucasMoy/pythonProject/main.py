from Customer import Customer
from Employee import Employee


def load():
    response = input('Are you going to add an employee?: ')
    name = input('Enter the name: ')
    lastName = input('Enter the last name: ')
    dni = input('Enter the dni: ')
    phone = input('Enter the phone: ')

    if (response == 'si'):
        salary = int(input('Enter the salary: '))
        emp = Employee(name, lastName, dni, phone, salary)
        people.append(emp)
    else:
        type = input('Enter the customer type: ')
        cus = Customer(name, lastName, dni, phone, type)
        people.append(cus)


people = []
load()
load()

for person in people:
    print(person)
