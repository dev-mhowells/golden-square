require 'diary'

RSpec.describe Diary do
    it "constructs" do
        diary = Diary.new
    end

    it "returns an empty array of entries" do
        diary = Diary.new
        expect(diary.all).to eq []
    end

    it "fails" do
        diary = Diary.new
        expect{ diary.count_words }.to raise_error "No entries to count"
    end
end