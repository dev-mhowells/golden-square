require 'todo'

RSpec.describe "Todo" do 

    it "returns a todo" do
        task = Todo.new("eat")
        expect(task.task).to eq 'eat'
    end

    it 'returns true after marking todo as done' do
        task = Todo.new('eat')
        task.mark_done!
        expect(task.done?).to eq true
    end
end