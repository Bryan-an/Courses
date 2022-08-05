# age = 145
#
# if 0 < age < 100:
#     print("Valid age")
# else:
#     print("Invalid age")

# president_salary = int(input("Enter the president salary: "))
# print("President salary: " + str(president_salary))
#
# director_salary = int(input("Enter the director salary: "))
# print("Director salary: " + str(director_salary))
#
# head_of_area_salary = int(input("Enter the head of area salary: "))
# print("Head of area salary: " + str(head_of_area_salary))
#
# manager_salary = int(input("Enter the manager salary: "))
# print("Manager salary: " + str(manager_salary))
#
# if manager_salary < head_of_area_salary < director_salary < president_salary:
#     print("All work right")
# else:
#     print("Something is wrong in this company")

# print("Scholarship Program 2017 Year")
# school_distance = int(input("Enter the distance to the school in km: "))
# print(school_distance)
#
# siblings_number = int(input("Enter the siblings number in the middle: "))
# print(siblings_number)
#
# familiar_salary = int(input("Enter the gross annual salary: "))
# print(familiar_salary)
#
# if school_distance > 40 and siblings_number > 2 or familiar_salary <= 20000:
#     print("You have the right to a scholarship")
# else:
#     print("You don't have the right to a scholarship")

print("Optional Subjects Year 2022")
print("Optional subjects: Graphic computing - Software tests - Usability and accessibility")
subject = input("Write the picked subject: ").lower()

if subject in ("graphic computing", "software tests", "usability and accessibility"):
    print("Picked subject: " + subject)
else:
    print("The picked subject is not available")
