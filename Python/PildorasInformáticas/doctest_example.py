import doctest


def verify_email(email):
    """
    The verify_email functions evaluate a given email searching an at.
    If the email has an at, it is valid.

    >>> verify_email('juan@cursos.es')
    True

    >>> verify_email('juancursos.es@')
    False

    >>> verify_email('juancursos.es')
    False

    >>> verify_email('juan@cursos@.es')
    False
    >>> 
    """
    at = email.count('@')

    if at != 1 or email.rfind('@') == (len(email) - 1) or email.find('@') == 0:
        return False
    else:
        return True


doctest.testmod()
