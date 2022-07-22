# Puedo crear listas dentro de otras listas y puedo guardarla dentro de una variable
demo_list = [1, 'hello', 1.24, True, [1, 2, 3]]
colors = ['red', 'green', 'blue', 'red']

# Esta es otra manera de crear una lista llamando al constructor
numbers_list = list((1, 2, 3, 4))
# print(numbers_list)
# print(type(numbers_list))

# r = list(range(1, 101))   #Me devuelve todos los valores de un intervalo dentro de una lista [1,9]
# print(r)

# print(dir(colors))       #Me muestra todos los métodos que puedo implementar en la lista
# print(len(demo_list))
# print(colors[-2])   #Me imprime un elemento de la lista según el índice
# print('red' in colors)     #Comprueba si un elemento está dentro de una lista

# colors[1] = 'yellow'   #Cambia el valor de un elemento de un lista
# print(colors)

# colors.append('violet')   #Agrega uno o varios elementos a una lista
# colors.extend(['violet', 'yellow'])   #Para agregar dos o más elementos a una lista hay que ponerlos dentro de una lista (entre corchetes)

#colors.insert(2, 'violet')  # Me inserta un elemento en el indice indicado
# colors.insert(len(colors), 'violet')

# print(colors)
# colors.pop()   #Quita el último elemento de una lista
#colors.remove('green')  #Elimina un elemento de una lista
#colors.pop(2)  #Elimina un elemento de una lista a partir del indice
#colors.clear()   #Elimina todos los elementos de una lista y la deja vacía
#colors.sort()   #Ordena los elementos de una lista de forma ascendente
#colors.sort(reverse=True)    #Ordena los elementos de una lista de forma descendente 
#colors.index('blue')  #Devuelve el índice de un elemento de una lista

print(colors.count('red'))  #Devuelve el número de elementos 'red' que hay en la lista