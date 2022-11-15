class Tasks
    def initialize
        # track tasks - arr
        @tasks = []
    end

    def add_task(task)
        # add to tasks arr
        @tasks << task
    end

    def delete_task(task)
        @tasks.delete(task)
    end

    def show_tasks
        if @tasks.empty?
            fail 'no tasks'
        end
        # display tasks
        return @tasks
    end
end
