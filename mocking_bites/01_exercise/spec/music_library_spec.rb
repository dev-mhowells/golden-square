require 'music_library'
require 'track'

RSpec.describe 'MusicLibrary integration' do

    it 'returns a list of track objects' do
        library = MusicLibrary.new
        track1 = double :track
        track2 = double :track
        library.add(track1)
        library.add(track2)
        expect(library.all).to eq [track1, track2]
    end

    it 'returns a list of tracks that match a keyword' do
        library = MusicLibrary.new
        track1 = double :track, matches?: true
        track2 = double :track, matches?: false
        library.add(track1)
        library.add(track2)
        expect(library.search('sea')).to eq [track1]
    end


end