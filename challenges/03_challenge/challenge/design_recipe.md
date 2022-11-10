PROBLEM

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO

METHOD SIGNATURE

# check_string checks whether a string includes '#TODO'
checked_string = check_string(str)

str: a string (e.g. "this is a string")
checked_string: a boolean

EXAMPLES

check_string("this is a string") => false
check_string("this is a #TODO string") => true

