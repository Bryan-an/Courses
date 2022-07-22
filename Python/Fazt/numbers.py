# Me permite pedir un dato al usuario por consola y almacenarlo en un variable
age = input("Insert your age: ")
print(type(age))  # El dato ingresado siempre será de tipo str (cadena de caracteres)
new_age = int(age) + 5  # Convierte una variable str a int
print(new_age)
