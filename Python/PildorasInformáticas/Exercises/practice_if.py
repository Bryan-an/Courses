print("Students grades evaluation program")

student_grade = input("Enter the student grade: ")


def evaluation(grade):
    assessment = "approved"

    if grade < 5:
        assessment = "suspense"

    return assessment


print(evaluation(int(student_grade)))
