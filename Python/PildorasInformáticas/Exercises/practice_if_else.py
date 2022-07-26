# print("Access verification")
#
# # user_age = int(input("Enter your age, please: "))
#
# if user_age < 18:
#     print("You can't pass")
# elif user_age > 100:
#     print("Invalid age")
# else:
#     print("You can pass")
#
# print("The program has finished")

student_grade = int(input("Enter your grade, please: "))

if student_grade < 5:
    print("Insufficient")
elif student_grade < 6:
    print("Sufficient")
elif student_grade < 7:
    print("Good")
elif student_grade < 9:
    print("Notable")
else:
    print("Outstanding")
