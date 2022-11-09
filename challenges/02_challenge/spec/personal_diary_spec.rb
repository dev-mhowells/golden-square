require 'personal_diary'

RSpec.describe 'make_snippet method' do
    it 'returns the first 5 words given' do
        result = make_snippet('one two three four five')
        expect(result).to eq 'one two three four five'
    end
    it 'returns the first 5 words given and then ... if there are more' do
        result = make_snippet('one two three four five six')
        expect(result).to eq 'one two three four five ...'
    end
end

RSpec.describe 'count_words method' do
    it 'returns the number of words in a string' do
        result = count_words('one two three four')
        expect(result).to eq 4
    end
end