require 'check_grammar'

RSpec.describe 'check_grammar method' do
    it 'returns false when passed an empty string' do
        result = check_grammar('')
        expect(result).to eq false
    end

    it 'returns false when passed a string that doesn\'t start with a capital letter' do
        result = check_grammar('hello, this is a sentence.')
        expect(result).to eq false
    end

    it 'returns false when passed a string that doesn\'t end with a . or ! or ?' do
        result = check_grammar('Hello, this is a sentence')
        expect(result).to eq false
    end

    it 'returns true when passed a string that starts with a capital letter, and ends with .' do
        result = check_grammar('Hello, this is a sentence.')
        expect(result).to eq true
    end

end