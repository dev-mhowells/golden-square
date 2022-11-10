PROBLEM

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list

CLASS INTERFACE

```Ruby
class Tasks
    def initialise
        # tasks: an empty array which accumulates tasks
    end

    def add_task(task) # task is a string
        # pushes task to tasks array
    end

    def remove_task(task)
        # removes task from tasks array
    end

    def print_tasks
        # throws exception if there are no tasks
        # returns all tasks as a comma seperated string
    end
end
```

EXAMPLES

```Ruby
# 1 
daily_tasks = Tasks.new
daily_tasks.add_task("walk the dog")
daily_tasks.add_task("brush your teeth")
daily_tasks.print_tasks # => "walk the dog, brush your teeth"

# 2
daily_tasks = Tasks.new
daily_tasks.print_tasks # => "fails with "No tasks"

# 3
daily_tasks = Tasks.new
daily_tasks.add_task("walk the dog")
daily_tasks.add_task("brush your teeth")
daily_tasks.remove_task("walk the dog")
daily_tasks.print_tasks # => "brush your teeth"

```