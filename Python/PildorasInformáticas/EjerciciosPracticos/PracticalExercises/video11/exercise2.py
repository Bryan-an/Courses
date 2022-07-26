# Crea un programa que pida por teclado “Nombre”, “Dirección” y “Tfno”. Esos tres datos
# deberán ser almacenados en una lista y mostrar en consola el mensaje: “Los datos
# personales son: nombre apellido teléfono” (Se mostrarán los datos introducidos por
# teclado).

personal_data = []

personal_data.append(input("Enter your name: "))
personal_data.append(input("Enter your address: "))
personal_data.append(input("Enter your phone: "))

print(f"The personal data are: {personal_data[0]} {personal_data[1]} {personal_data[2]}")