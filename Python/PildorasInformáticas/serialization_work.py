import pickle

# names_list = ["Peter", "Ana", "Mary", "Isabel"]
# binary_file = open("names_list", "wb")
# pickle.dump(names_list, binary_file)
# binary_file.close()

# del(binary_file)

file = open("names_list", "rb")
my_list = pickle.load(file)
print(my_list)
