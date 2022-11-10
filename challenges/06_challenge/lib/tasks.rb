class Tasks
    def initialize
        @tasks = []
    end

    def add_task(task) # task is a string
        @tasks.push(task)
    end

    def remove_task(task)
        @tasks.delete(task)
    end

    def print_tasks
        if @tasks.length < 1
            fail "no tasks"
        else 
        @tasks.join(", ")
        end
    end
end