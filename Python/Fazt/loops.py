foods = ['apples', 'bread', 'cheese', 'milk', 'bananas', 'grapes']

for food in foods:  #Imprime todos los elementos de una lista (foods en este caso)
    if food == 'cheese':  #Puedo colocar validaciones dentro del for
        continue  #Esto omite lo que sigue del código y pasa al siguiente elemento
    print(food)
