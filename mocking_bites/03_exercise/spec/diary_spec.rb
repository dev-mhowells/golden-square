require 'diary'

RSpec.describe Diary do
    it "returns contents" do
        entry = Diary.new('hello')
        expect(entry.read).to eq 'hello'
    end
end