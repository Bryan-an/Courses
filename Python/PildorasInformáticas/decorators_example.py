def decorator_function(function):
    def internal_function(*args, **kwargs):
        # Aditional functions
        print("We are going to perform a calculation:")
        function(*args, **kwargs)

        # Aditional actions
        print("We have finished the calculation.")

    return internal_function


@decorator_function
def sum(num1, num2, num3):
    print(num1 + num2 + num3)


@decorator_function
def subtract(num1, num2):
    print(num1 - num2)


@decorator_function
def my_pow(base, exponent):
    print(pow(base, exponent))


sum(7, 5, 8)
subtract(12, 10)
my_pow(base=5, exponent=3)
