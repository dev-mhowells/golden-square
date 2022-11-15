require 'tasks'

RSpec.describe Tasks do
    
    it "returns all tasks" do
        tasks = Tasks.new
        tasks.add_task("eat")
        tasks.add_task("sleep")
        expect(tasks.show_tasks).to eq ['eat', 'sleep']
    end

    it "returns all non-removed tasks" do
        tasks = Tasks.new
        tasks.add_task("eat")
        tasks.add_task("sleep")
        tasks.delete_task('eat')
        expect(tasks.show_tasks).to eq ['sleep']
    end

    it 'fails' do
        tasks = Tasks.new
        expect{ tasks.show_tasks }.to raise_error 'no tasks'
    end
end