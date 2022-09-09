import pickle
from serialize_objects import Vehicle

opened_file = open("the_cars", 'rb')
my_cars = pickle.load(opened_file)
opened_file.close()

for car in my_cars:
    car.print_state()
    print("----------------------------")
