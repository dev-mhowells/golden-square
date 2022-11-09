require 'calc_reading_time'

RSpec.describe 'calc_time_in_mins method' do
    it 'takes a text with a length of 0 and returns 0' do
        result = calc_time_in_mins('')
        expect(result).to eq 0
    end
    
    it 'takes a text with a length of 200 and returns 1' do
        result = calc_time_in_mins('one ' * 200)
        expect(result).to eq 1
    end

    it 'takes a text with a length of 100 and returns .5' do
        result = calc_time_in_mins('one ' * 100)
        expect(result).to eq 0.5
    end

    it 'takes a text with a length of 400 and returns 2' do
        result = calc_time_in_mins('one ' * 400)
        expect(result).to eq 2
    end

    it 'takes a text with a length of 500 and returns 2.5' do
        result = calc_time_in_mins('one ' * 500)
        expect(result).to eq 2.5
    end
end
