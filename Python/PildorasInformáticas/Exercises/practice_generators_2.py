def return_cities(*cities):
    for city in cities:
        # for i in city:
        yield from city


returned_cities = return_cities("Madrid", "Barcelona", "Bilbao", "Valencia")

print(next(returned_cities))
print(next(returned_cities))
