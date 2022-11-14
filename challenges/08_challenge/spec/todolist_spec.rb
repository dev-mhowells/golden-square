require 'todolist'

RSpec.describe TodoList do

    it 'fails' do
        list1 = TodoList.new
        expect { list1.complete }.to raise_error "no tasks given"
    end

    it 'fails' do
        list1 = TodoList.new
        expect { list1.incomplete }.to raise_error "no tasks given"
    end

end