class Car:
    def displace(self):
        print("I displace by using four wheels")


class Motorcycle:
    def displace(self):
        print("I displace by using two wheels")


class Truck:
    def displace(self):
        print("I displace by using six wheels")


def displace_vehicle(vehicle):
    vehicle.displace()


my_vehicle = Motorcycle()
displace_vehicle(my_vehicle)
