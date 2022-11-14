```Ruby

# 1 - complete
todo1 = Todo.new('apply for job')
todo2 = Todo.new('eat breakfast')
todo1.mark_done!
list1 = TodoList.new
list1.add(todo1)
list1.add(todo2)
list1.complete # => 'apply for job'

# 2 - incomplete
todo1 = Todo.new('apply for job')
list1 = TodoList.new
list1.add(todo1)
list1.incomplete # => 'apply for job'

# 3 - give_up!
todo1 = Todo.new('apply for job')
todo2 = Todo.new('eat breakfast')
list1 = TodoList.new
list1.add(todo1)
list1.add(todo2)
list1.give_up!
list1.complete # => 'apply for job, eat breakfast'
--------

# 1

```