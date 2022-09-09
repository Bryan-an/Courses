from io import open

# text_file = open("file.txt", "w")
# phrase = "Nice day to study Python\non Wednesday"
# text_file.write(phrase)
# text_file.close()

# text_file = open("file.txt", "r")
# text = text_file.read()
# text_file.close()
# print(text)

# text_file = open("file.txt", "r")
# text_lines = text_file.readlines()
# text_file.close()
# # print(text_lines)
# # print(text_lines[0])
# print(text_lines[1])

# text_file = open("file.txt", "a")
# text_file.write("\nit's always a good moment to study Python")
# text_file.close()

# text_file = open("file.txt", "r")
# # text_file.seek(11)
# # print(text_file.read(11))
# # # print(text_file.read())
# # print(text_file.read())
# text_file.seek(len(text_file.readline()))
# print(text_file.read())

text_file = open("file.txt", "r+")  # reading and writing
# text_file.write("Text start")
# print(text_file.readlines())
text_list = text_file.readlines()
text_list[1] = "This line has been included from out\n"
text_file.seek(0)
text_file.writelines(text_list)
text_file.close()
