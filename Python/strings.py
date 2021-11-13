my_str = "Bryan"

print("My name is " + my_str)
print(f"My name is {my_str}")   #Me permite agregar una variable dentro de la cadena
print("My name is {0}".format(my_str))

# print(dir(my_str))   #Me muestra en consola todos los métodos y funciones que puedo implementar en esta variable

# print(my_str.upper())  # Convierte todos los caracteres a mayúsculas
# print(my_str.lower())  # Convierte todos los caracteres a minúsculas
# print(my_str.swapcase())  # Convierte las mayusculas en minusculas y viceversa
# # Convierte la primera letra de la cadena a mayúscula
# print(my_str.capitalize())
# print(my_str.replace('hello', 'bye').upper())  # remplaza un texto por otro
# print(my_str.count(' '))  # Cuenta cuantas 'l' hay en la cadena
# # Me dice si la cadena comienza con la palabra 'hola'
# print(my_str.startswith('hola'))
# print(my_str.startswith('h'))
# # Me dice si la cadena termina con la palabra 'world'
# print(my_str.endswith('world'))
# # Separa mi cadena en varios textos a partir del caracter ' ' (espacio)
# print(my_str.split())
# # Separa mi cadena en varios textos a partir del caracter ',' (coma)
# print(my_str.split(','))
# # Separa mi cadena en varios textos a partir del caracter 'o'
# print(my_str.split('o'))
# print(my_str.find('o'))  # Me devuelve la posicion (indice) de un carecater
# print(len(my_str))  # Me muestra la longitud de la cadena
# print(my_str.index('e'))  # Me muestra el índice de un caracter
# print(my_str.isnumeric())  # Me muestra si una variable es de tipo numérica
# print(my_str.isalpha())  # Me muestra si una variable es de tipo alfanumérica

# Me imprime un caracter a partir de la posicion (indice de ese caracter)
# print(my_str[0])
# print(my_str[3])
# print(my_str[4])
# print(my_str[-1])   #Empieza la cadena al reves, es decir me devuelve el último caracter
# print(my_str[-5])