# # my_tuple = ("Juan", 13, 1, 1995)
# my_list = ["Juan", 13, 1, 1995, 13]
# # my_list = list(my_tuple)
# my_tuple = tuple(my_list)
#
# # print(my_tuple[1])
# # print(my_list)
# # print(my_tuple)
# # print("Juan" in my_tuple)
# # print(my_tuple.count(13))
# print(len(my_tuple))

# my_tuple = ("Juan",)  # Unitary tuple
# print(len(my_tuple))

# my_tuple = "Juan", 13, 1, 1995  # Parentheses are optional (tuple packing)
my_tuple = ("Juan", 13, 1, 1995)
# my_tuple.append("Paco") # Error

name, day, month, year = my_tuple  # Tuple unpacking
print(name)
print(day)
print(year)
print(month)
