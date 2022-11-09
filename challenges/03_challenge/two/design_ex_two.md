PROBLEM

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctiation mark.

METHOD SIGNATURE

# check_grammar verifies a sentence based on its first and last characters
correct_sentence = check_grammar(sentence)

sentence: a string (e.g. "Hello, this is a sentence.")
correct_sentence: a boolean

EXAMPLES

correct_sentence("") => false
correct_sentence("Hello, this is a sentence.") => true
correct_sentence("Hello, this is a sentence!") => true
correct_sentence("Hello, this is a sentence?") => true
correct_sentence("Hello?") => true
correct_sentence("hello, this is a sentence.") => false
correct_sentence("Hello, this is a sentence") => false
correct_sentence("hello") => false


