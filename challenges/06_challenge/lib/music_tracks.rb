class MusicTracks
    def initialize
    # tracks: an empty array which tracks tracks listened to
        @tracks = []
    end

    def add_track(track)
    # push tracks to tracks array
        @tracks.push(track)
    end

    def show_tracks
        if @tracks.length < 1
            fail "No tracks"
        end
    # return the track array as a comma seperated list
        @tracks.join(", ")
    end
end