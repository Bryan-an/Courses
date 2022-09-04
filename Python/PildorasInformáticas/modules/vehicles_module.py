class Vehicle:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model
        self.underway = False
        self.speeded = False
        self.curbed = False

    def start_up(self):
        self.underway = True

    def speed_up(self):
        self.speeded = True

    def curb(self):
        self.curbed = True

    def state(self):
        print(
            f"Brand: {self.brand}\nModel: {self.model}\nUnderway: {self.underway}\n"
            f"Speeded: {self.speeded}\nCurbed: {self.curbed}")


class Van(Vehicle):
    def carry(self, loaded):
        self.loaded = loaded

        if self.loaded:
            return "The van is loaded"
        else:
            return "The van is not loaded"


class Motorcycle(Vehicle):
    doing_wheelie = ""

    def wheelie(self):
        self.doing_wheelie = "I go doing the wheelie"

    def state(self):
        print(
            f"Brand: {self.brand}\nModel: {self.model}\nUnderway: {self.underway}\n"
            f"Speeded: {self.speeded}\nCurbed: {self.curbed}\n{self.doing_wheelie}")


class ElectricVehicle(Vehicle):
    def __init__(self, brand, model):
        super().__init__(brand, model)
        self.autonomy = 100

    def load_energy(self):
        self.loading = True
