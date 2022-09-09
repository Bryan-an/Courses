import pickle


class Vehicle:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model
        self.underway = False
        self.speeded = False
        self.braking = False

    def start_up(self):
        self.underway = True

    def speed_up(self):
        self.speeded = True

    def brake(self):
        self.braking = True

    def print_state(self):
        print(
            f"Brand: {self.brand}\nModel: {self.model}\nUnderway: {self.underway}\nSpeeded: {self.speeded}\nBraking: {self.braking}")


car_1 = Vehicle("Mazda", "MX5")
car_2 = Vehicle("Seat", "Leon")
car_3 = Vehicle("Renault", "Megane")

cars = [car_1, car_2, car_3]

file = open("the_cars", "wb")
pickle.dump(cars, file)
file.close()
del file
