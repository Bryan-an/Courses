class Car():
    # Attributes or properties
    chassis_length = 250
    chassis_width = 120
    wheels = 4
    underway = False

    # Methods
    def start_up(self):
        self.underway = True

    def state(self):
        if (self.underway):
            return "The car is underway"
        else:
            return "The car is stopped"


my_car = Car()  # Instance a class

print(f"The car length is {my_car.chassis_length}")
print(f"The car has {my_car.wheels} wheels")
print(my_car.state())

my_car.start_up()

print(my_car.state())
