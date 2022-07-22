class Person:
    def __init__(self, name, lastName, dni, phone):
        self.name = name
        self.lastName = lastName
        self.dni = dni
        self.phone = phone

    def __str__(self):
        return self.name + " " + self.lastName + " - " + self.dni
