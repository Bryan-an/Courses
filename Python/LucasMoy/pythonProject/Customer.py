from Person import Person


class Customer(Person):
    def __init__(self, name, lastName, dni, phone, category):
        super().__init__(name, lastName, dni, phone)
        self.category = category
