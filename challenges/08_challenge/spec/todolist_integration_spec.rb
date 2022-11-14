require 'todolist'
require 'todo'

RSpec.describe "TodoList integration" do

    it 'returns complete todos' do
        todo1 = Todo.new('apply for job')
        todo2 = Todo.new('eat breakfast')
        todo2.mark_done!
        list1 = TodoList.new
        list1.add(todo1)
        list1.add(todo2)
        expect(list1.complete).to eq 'eat breakfast'
    end

end