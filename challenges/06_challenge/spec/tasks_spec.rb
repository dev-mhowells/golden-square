require "tasks"

RSpec.describe Tasks do
    it "returns all tasks as a comma seperated string" do
        daily_tasks = Tasks.new
        daily_tasks.add_task("walk the dog")
        daily_tasks.add_task("brush your teeth")
        result = daily_tasks.print_tasks
        expect(result).to eq "walk the dog, brush your teeth"
    end

    it "returns all tasks as a comma seperated string" do
        daily_tasks = Tasks.new
        daily_tasks.add_task("brush your teeth")
        result = daily_tasks.print_tasks
        expect(result).to eq "brush your teeth"
    end

    it "returns all tasks as a comma seperated string" do
        daily_tasks = Tasks.new
        daily_tasks.add_task("walk the dog")
        daily_tasks.add_task("brush your teeth")
        daily_tasks.remove_task("walk the dog")
        result = daily_tasks.print_tasks
        expect(result).to eq "brush your teeth"
    end

    it "fails" do
        daily_tasks = Tasks.new
        expect { daily_tasks.print_tasks }.to raise_error "no tasks"
    end

end
