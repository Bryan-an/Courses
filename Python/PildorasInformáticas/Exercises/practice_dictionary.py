# my_dictionary = {
#     "Germany": "Berlin",
#     "France": "Paris",
#     "United Kingdom": "London",
#     "Spain": "Madrid"
# }
# my_dictionary["Italy"] = "Lisbon"
# print(my_dictionary)
#
# my_dictionary["Italy"] = "Rome"
# print(my_dictionary)
#
# del my_dictionary["United Kingdom"]
# print(my_dictionary)

# my_dictionary = {
#     "Germany": "Berlin",
#     23: "Jordan",
#     "Musketeers": 3
# }
#
# print(my_dictionary)

# my_tuple = ["Spain", "France", "United Kingdom", "Germany"]
# my_dictionary = {
#     my_tuple[0]: "Madrid",
#     my_tuple[1]: "Paris",
#     my_tuple[2]: "London",
#     my_tuple[3]: "Berlin"
# }
# print(my_dictionary["France"])

my_dictionary = {
    23: "Jordan",
    "Name": "Michael",
    "Team": "Chicago",
    "Rings": {
        "Seasons": [1991, 1992, 1993, 1996, 1997, 1998]
    }
}

print(my_dictionary.keys())
print(my_dictionary.values())
print(len(my_dictionary))
print(my_dictionary)
