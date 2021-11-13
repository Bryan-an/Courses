myList = ['María', 'Pepe', 'Marta', 'Antonio']

# print(myList)  # Imprime todas la lista
# print(myList[2])  # Imprime el elemento que tiene el índice 2, 'Marta' en este caso
# print(myList[7])  # Se lanza una excepción porque no existe ese índice
# print(myList[-2])  # Cuando se coloca un índice negativo empieza a contar desde el último
# El último elemento tendría el índice -1, el penúltimo el -2,...
# En este caso imprimiría 'Martha'

# Imprimir una porción de la lista
# El indice a la izquierda se incluye, y el índice a la derecha se excluye
# Es decir [0;3). En este caso se imprimiría: ['María', 'Pepe', 'Marta']
# print(myList[0:3])
# print(myList[:3]) # Esto es lo mismo que arriba, no es necesario colocar el cero

# Se accede desde el elemento con el índice específicado a la izquierda,
# hasta el final. En este caso imprimiría: ['Marta', 'Antonio']
print(myList[2:])