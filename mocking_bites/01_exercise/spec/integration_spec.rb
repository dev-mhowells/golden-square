require 'music_library'
require 'track'

RSpec.describe 'MusicLibrary integration' do
    it 'returns a list of track objects' do
        track1 = Track.new('title1', 'artist1')
        track2 = Track.new('title2', 'artist2')
        library = MusicLibrary.new
        library.add(track1)
        library.add(track2)
        expect(library.all).to eq [track1, track2]
    end

    it 'returns a list of track objects' do
        track1 = Track.new('title1', 'sea song')
        track2 = Track.new('title2', 'wind song')
        library = MusicLibrary.new
        library.add(track1)
        library.add(track2)
        expect(library.search('sea')).to eq [track1]
    end
    
end