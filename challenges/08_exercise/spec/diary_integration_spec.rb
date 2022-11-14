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
    end

    it "returns the diary entry whose length is most similar to wpm * minutes to read" do
        diary = Diary.new
        entry1 = DiaryEntry.new('first entry', 'I ate breakfast today, it was lovely')
        entry2 = DiaryEntry.new('second entry', 'I ate lunch')
        entry3 = DiaryEntry.new('second entry', 'I ate dinner and it was ghastly and I really did not enjoy it')
        diary.add(entry3)
        diary.add(entry2)
        diary.add(entry1)
        expect(diary.find_best_entry_for_reading_time(4, 2)).to eq 'I ate breakfast today, it was lovely'
    end
end