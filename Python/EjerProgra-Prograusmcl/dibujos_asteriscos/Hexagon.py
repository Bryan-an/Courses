side = int(input('Side: '))

last_row = (side * 2) - 1
asterisks_number = side
blanks_number = side - 1
asterisks_and_blanks_increment = 1

for i in range(last_row):
    print(f'{" " * blanks_number} {"*" * asterisks_number}')

    if blanks_number == 0:
        asterisks_and_blanks_increment *= -1

    asterisks_number += asterisks_and_blanks_increment * 2
    blanks_number -= asterisks_and_blanks_increment
