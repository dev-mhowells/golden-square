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

    it 'returns incomplete todos' do
        todo1 = Todo.new('apply for job')
        todo2 = Todo.new('eat breakfast')
        todo2.mark_done!
        list1 = TodoList.new
        list1.add(todo1)
        list1.add(todo2)
        expect(list1.incomplete).to eq 'apply for job' # => 'apply for job'
    end

    it 'completes all tasks' do
        todo1 = Todo.new('apply for job')
        todo2 = Todo.new('eat breakfast')
        list1 = TodoList.new
        list1.add(todo1)
        list1.add(todo2)
        list1.give_up!
        expect(list1.complete).to eq 'apply for job, eat breakfast'
    end

end