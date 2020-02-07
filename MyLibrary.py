from robot.libraries.BuiltIn import BuiltIn
import operator as op

def title_should_start_with(expected):
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    title = seleniumlib.get_title()
    if not title.startswith(expected):
        raise AssertionError("Title '%s' did not start with '%s'"
                             % (title, expected))
        
def calculate(number1, number2, operation):
    arithmetic_function = { '+': op.add, '-': op.sub, '*': op.mul, '/': op.div }
    return arithmetic_function[operation](number1, number2)

def setup():
    print ("setting stuff up")
    
def teardown():
    print ("tearing stuff down")

def add(x, y):
   return x + y
# This function subtracts two numbers 
def subtract(x, y):
   return x - y
# This function multiplies two numbers
def multiply(x, y):
   return x * y
# This function divides two numbers
def divide(x, y):
   return x / y