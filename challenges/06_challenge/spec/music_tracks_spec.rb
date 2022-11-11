require "music_tracks"

RSpec.describe MusicTracks do

    it "returns a track as a string" do
        music = MusicTracks.new
        music.add_track("track1")
        expect(music.show_tracks).to eq "track1"
    end

    it "returns a comma seperated list of tracks the user has added" do
        music = MusicTracks.new
        music.add_track("track1")
        music.add_track("track2")
        expect(music.show_tracks).to eq "track1, track2"
    end

    it "fails" do
        music = MusicTracks.new
        expect { music.show_tracks }.to raise_error "No tracks"
    end
end