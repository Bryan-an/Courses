from modules import math_functions


class Area:
    """This class calculate the areas of several geometric figures"""
    def calculate_square_area(side):
        """Calculate the are of the a square"""
        return f"The square are is: {side * side}"

    def calculate_triangle_area(base, height):
        """Calculate the area of a triangle by base and height"""
        return f"The triangle ara is: {(base * height)/2}"


help(math_functions)
