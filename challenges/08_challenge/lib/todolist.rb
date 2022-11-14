class TodoList
    def initialize
        @todos = []
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing
      @todos << todo
    end
  
    def incomplete
      # Returns all non-done todos
    end
  
    def complete
      # Returns all complete todos
      done = []
      @todos.each do |todo|
        if todo.done?
            done << todo.task
        end
      end
      return done.join(', ')
    end
  
    def give_up!
      # Marks all todos as complete
    end
  end