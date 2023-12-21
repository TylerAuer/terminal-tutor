import random
from typing import List

def get_ten_digit_number() -> str:
    """Generate a ten digit number."""
    number = ''
    for _ in range(10):
        number += str(random.randint(0, 9))
    return number

def parenthesize_area_code(number: str) -> str:
    return f'({number[:3]}) {number[3:6]}-{number[6:]}'

def dashify(number: str) -> str:
    return f'{number[:3]}-{number[3:6]}-{number[6:]}'

def format_phone_number(number: str) -> str:
    return f'({number[:3]}) {number[3:6]}-{number[6:]}'

def random_spaces(number: str) -> str:
    spaces = random.randint(0, 3)
    for _ in range(spaces):
        index = random.randint(0, len(number))
        number = number[:index] + ' ' + number[index:]
    return number

def random_dashes(number: str) -> str:
    dashes = random.randint(0, 3)
    for _ in range(dashes):
        index = random.randint(0, len(number))
        number = number[:index] + '-' + number[index:]
    return number

def random_parentheses(number: str) -> str:
    parentheses = random.randint(0, 3)
    for _ in range(parentheses):
        index = random.randint(0, len(number))
        number = number[:index] + '(' + number[index:]
        index = random.randint(0, len(number))
        number = number[:index] + ')' + number[index:]
    return number

manglers = [
    parenthesize_area_code,
    dashify,
    format_phone_number,
    random_spaces,
    random_dashes,
    random_parentheses,
]

numbers: List[str] = []
for _ in range(10000):
    number = get_ten_digit_number()
    numbers.append(random.choice(manglers)(number))
    
# save numbers to file
with open('messy_phone_numbers.txt', 'w') as f:
    for number in numbers:
        f.write(f'{number}\n')

