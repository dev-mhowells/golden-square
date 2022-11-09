PROBLEM

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

METHOD SIGNATURE

# 'calc_time_in_mins' takes a text and returns the number of mins it would take the user to read the text

num_of_mins = calc_time_in_mins(text)

text: a string (e.g. "This is the start of a longer text")
num_of_mins: an interger 

# the method has no other side effects

EXAMPLES

200_words = (a 200 word string)
100_words = (a 100 word string)
400_words = (a 400 word string)
500_words = (a 500 word string)

calc_time_in_mins(200_words) => 1
calc_time_in_mins(100_words) => .5
calc_time_in_mins(400_words) => 2 
calc_time_in_mins(500_words) => 2.5

