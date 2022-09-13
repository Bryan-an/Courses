import re

# string = "We are going to learn regular expressions in Python. Python a language of straightforward sintax."
# search_text = "Python"

# # if re.search(search_text, string) is not None:
# #     print("I've found the text")
# # else:
# #     print("I've not found the text")

# # found_text = re.search(search_text, string)

# # print(found_text.start())
# # print(found_text.end())
# # print(found_text.span())
# # print(string[found_text.start(): found_text.end()])

# print(len(re.findall(search_text, string)))

# names_list = ["Ma.1", "Se1", "Ma2", "Ba1", "Ma:3",
#               "Va1", "Va2", "Ma4", "MaA", "Ma.5", "MaB", "Ma:C"]

# for name in names_list:
#     if re.findall("Ma[.:]", name):
#         print(name)

code_1 = "FDSAFSDFASDFAF71KAFDSSSSSSSSSSSSSSDF"
code_2 = "asdfasdfasdfasddfdasfasd71dsfdfdfddf"
code_3 = "fasdf dsafasd fasdf sf sdf sd"

if re.search("71", code_3):
    print("We have found it")
else:
    print("We've not found it")
