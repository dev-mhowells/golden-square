class TodoList
    def initialize
        @todos = []
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing
      @todos << todo
    end
  
    def incomplete
        if @todos.length < 1
            fail "no tasks given"
        end
      # Returns all non-done todos
      not_done = []
      @todos.each do |todo|
        if !todo.done?
            not_done << todo.task
        end
      end
      return not_done.join(', ')
    end
  
    def complete
        if @todos.length < 1
            fail "no tasks given"
        end
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
      @todos.each { |todo| todo.mark_done! }
    end
  end