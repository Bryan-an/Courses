class Car:

    # Constructor
    def __init__(self):
        # Attributes or properties
        self.__chassis_length = 250
        self.__chassis_width = 120
        self.__wheels = 4
        self.__underway = False

    # Methods
    def start_up(self, started_up):
        self.__underway = started_up

        if self.__underway:
            checkup = self.__internal_checkup()

        if self.__underway and checkup:
            return "The car is underway"
        elif self.__underway and checkup == False:
            return "Something went wrong in the checkup. Can't start up."
        else:
            return "The car is stopped"

    def state(self):
        print(
            f"The car has {self.__wheels} wheels. A width of {self.__chassis_width} and a length of {self.__chassis_length}")

    def __internal_checkup(self):
        print("Performing internal checkup")

        self.gass = "ok"
        self.oil = "ok"
        self.doors = "closed"

        if self.gass == "ok" and self.oil == "ok" and self.doors == "closed":
            return True
        else:
            return False


my_car = Car()  # Instance a class
print(my_car.start_up(True))
my_car.state()

print("----------------Next we create the second object--------------------")

my_car_2 = Car()
print(my_car_2.start_up(False))
my_car_2.state()
