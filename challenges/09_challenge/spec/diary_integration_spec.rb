require "diary"
require "mobnumbers"

RSpec.describe "Diary integration" do

    it "returns all diary entries" do
        num1 = MobileNumbers.new('123')
        num2 = MobileNumbers.new('456')
        diary = Diary.new
        diary.add_num_instance(num1)
        diary.add_num_instance(num2)
        diary.add_entry("entry 1")
        diary.add_entry("entry 2")
        expect(diary.read_entries).to eq [['entry 1', ['123', '456']], ['entry 2', ['123', '456']]]
    end

    it "returns entry based on time available and reading speed(wpm)" do
        num1 = MobileNumbers.new('123')
        diary = Diary.new
        diary.add_num_instance(num1)
        diary.add_entry("1 2 3 4 5")
        diary.add_entry("1 2 3 4 5 6 7 8 9 10")
        expect(diary.select_entry(1, 10)).to eq ['1 2 3 4 5 6 7 8 9 10', ['123']]
    end
end