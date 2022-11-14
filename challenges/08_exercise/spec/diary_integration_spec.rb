require 'diary'
require 'diary_entry'

RSpec.describe "Diary integration" do

    it "returns a list of all entries" do
        diary = Diary.new
        entry1 = DiaryEntry.new('first entry', 'I ate breakfast')
        entry2 = DiaryEntry.new('second entry', 'I ate lunch')
        diary.add(entry1)
        diary.add(entry2)
        expect(diary.all).to eq [entry1, entry2]
    end

    it "returns the number of words in contents as an integer" do
        diary = Diary.new
        entry1 = DiaryEntry.new('first entry', 'I ate breakfast')
        entry2 = DiaryEntry.new('second entry', 'I ate lunch')
        diary.add(entry1)
        diary.add(entry2)
        expect(diary.count_words).to eq 6
    end

    it "takes wpm and returns reading time for all diary contents" do
        diary = Diary.new
        entry1 = DiaryEntry.new('first entry', 'I ate breakfast')
        entry2 = DiaryEntry.new('second entry', 'I ate lunch')
        diary.add(entry1)
        diary.add(entry2)
        expect(diary.reading_time(3)).to eq 2
        # => loops over entries and runs diary_entry.reading_time on each, 
        # then sums them and divides by wpm (the value passed in) to give an estimate for how long 
        # it would take to read whole diary
    end
end