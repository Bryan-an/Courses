# def generate_pairs(limit):
#     num = 1
#
#     my_list = []
#
#     while num < limit:
#         my_list.append(num * 2)
#         num += 1
#
#     return my_list
#
#
# print(generate_pairs(10))

def generate_pairs(limit):
    num = 1

    while num < limit:
        yield num * 2
        num += 1


return_pairs = generate_pairs(10)

print(next(return_pairs))

print("Here could be here more code")

print(next(return_pairs))

print("Here could be here more code")

print(next(return_pairs))
