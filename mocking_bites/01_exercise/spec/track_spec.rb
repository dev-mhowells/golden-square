require 'track'

RSpec.describe Track do
    it 'Returns true if the keyword matches either the title or artist' do
        track1 = Track.new('title1', 'sea song')
        expect(track1.matches?('sea')).to eq true
    end
end



