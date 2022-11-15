DESCRIBE THE PROBLEM

    As a user
    So that I can record my experiences
    I want to keep a regular diary

    As a user
    So that I can reflect on my experiences
    I want to read my past diary entries

    As a user
    So that I can reflect on my experiences in my busy day
    I want to select diary entries to read based on how much time I have and my reading speed

    As a user
    So that I can keep track of my tasks
    I want to keep a todo list along with my diary

    As a user
    So that I can keep track of my contacts
    I want to see a list of all of the mobile phone numbers in all my diary entries


DESIGN THE CLASS SYSTEM

- General

Diary -
add diary entries, 
read entries, 
select appropriate entries, 
        |
    Needs access to
        |
Mobile numbers - 
add mobile numbers,
see all mobile numbers.


Tasks -
Add tasks
keep list of tasks

- Interface

```Ruby
    class Diary
        def initialize
            # track entries []
            # mob nums - arr of instances of mobile numbers
        end

        def add_num_instance(num)
            # returns mobile nums array
        end

        def add_entry(entry)
            # add entries to the diary
        end

        def read_entries
            # return diary entries - 1. entry, 2. mob nums
        end

        def select_entries(time, wpm)
            # return entry based on time available and reading speed(wpm)
            # - consider entry only, not mob nums
        end

    end

    class MobileNumbers(num)

        def initialize
            # is num
        end

        def get_num
            # return num
        end

    end

    class Tasks
        def initialize
            # track tasks - arr
        end

        def add_task
            # add to tasks arr
        end

        def show_tasks
            # display tasks
        end
    end
```

INTEGRATION TEST EXAMPLES:

```Ruby
    # Diary

    # read_entries
    num1 = MobileNumbers.new('123')
    num2 = MobileNumbers.new('456')
    diary = Diary.new
    diary.add_num_instance(num1)
    diary.add_num_instance(num2)
    diary.add_entry("entry 1")
    diary.add_entry("entry 2")
    diary.read_entries # => [['entry 1', ['123', '456']], ['entry 2', ['123', '456']]

    # select_entries
    num1 = MobileNumbers.new('123')
    diary = Diary.new
    diary.add_num_instance(num1)
    diary.add_entry("1 2 3 4 5")
    diary.add_entry("1 2 3 4 5 6 7 8 9 10")
    select_entry(1, 10) # => [['1 2 3 4 5 6 7 8 9 10], ['123']]
```

UNIT TEST EXAMPLES: 

```Ruby
    # MobileNumbers
    num1 = MobileNumbers.new('123')
    num1.get_num # => '123'

    # Diary

    # read_entries
    diary = Diary.new
    diary.add_entry("entry 1")
    diary.add_entry("entry 2")
    diary.read_entries # => [['entry 1', []], ['entry 2', []]

    # select_entry
    diary = Diary.new
    diary.add_entry("1 2 3 4 5")
    diary.add_entry("1 2 3 4 5 6 7 8 9 10")
    select_entry(1, 10) # => [['1 2 3 4 5 6 7 8 9 10], []]

    # Tasks
    tasks = Tasks.new
    tasks.addTask("eat")
    tasks.addTask("sleep")
    tasks.show_tasks # => ['eat', 'sleep']

```
diary integration spec - structure of return value
diary class - map
diary - additional fail

question: didn't end up implementing my unit test examples for diary, 
their functionality was tested as part of integration testing. I think I should have
tested them as a unit test before the integration testing, but as the outputs I wanted
also relied on the integration of the MobileNumbers class, I wasn't sure exactly 
how I should have gone about it.

question: is the design file considered an integral part of the code which should be updated
whenever my actual code diverges from it? Or is it there mainly for planning purposes and does
not need to be updated as I go along and make changes?
