import pickle


class Person:
    def __init__(self, name, genre, age):
        self.name = name
        self.genre = genre
        self.age = age
        print(f"A new person has been created with the name {self.name}")

    def __str__(self):
        return "{} {} {}".format(self.name, self.genre, self.age)


class PeopleList:
    people = []

    def __init__(self):
        people_list = open("external_file", "ab+")
        people_list.seek(0)

        try:
            self.people = pickle.load(people_list)
            print(f"{len(self.people)} people has been loaded")
        except:
            print("The file is empty")
        finally:
            people_list.close()
            del people_list

    def add_person(self, person):
        self.people.append(person)
        self.save_people_in_external_file()

    def show_people(self):
        for person in self.people:
            print(person)

    def save_people_in_external_file(self):
        people_list = open("external_file", "wb")
        pickle.dump(self.people, people_list)
        people_list.close()
        del people_list

    def show_external_file_info(self):
        print(f"The information of the external file is the next:")

        for person in self.people:
            print(person)


my_list = PeopleList()
# person = Person("Sandra", "Female", 29)
# person = Person("Antonio", "Male", 49)
person = Person("Ana", "Female", 19)
my_list.add_person(person)
my_list.show_external_file_info()
