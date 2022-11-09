require 'grammar_stats'

RSpec.describe GrammarStats do
    it 'returns true if text starts with capital letter and ends with proper punctuation' do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("Hello, this is a sentence.")
        expect(result).to eq true
    end

    it 'returns false if text starts with capital letter and ends with improper punctuation' do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("Hello, this is a sentence")
        expect(result).to eq false
    end

    it 'returns false if text starts without capital letter and ends with proper punctuation' do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("hello, this is a sentence!")
        expect(result).to eq false
    end

    it 'returns 100 if all tests are passed' do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Hello, this is a sentence.")
        result = grammar_stats.percentage_good
        expect(result).to eq 100
    end

    it 'returns 50 if half of all tests are passed' do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Hello, this is a sentence.")
        grammar_stats.check("Hello, this is a sentence")
        result = grammar_stats.percentage_good
        expect(result).to eq 50
    end
        
end
        