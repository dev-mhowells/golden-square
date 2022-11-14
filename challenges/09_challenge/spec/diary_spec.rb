require 'diary'

RSpec.describe Diary do

    it "fails" do
        diary = Diary.new
        expect { diary.read_entries }.to raise_error 'no entries'
    end
end