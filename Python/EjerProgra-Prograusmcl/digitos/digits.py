valid = False

while not valid:
    try:
        number = int(input("Enter a number: "))
        valid = True
    except:
        print("Invalid value")

print(f'{number} has {len(str(number))} digits')
