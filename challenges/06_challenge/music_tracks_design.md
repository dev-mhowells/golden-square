PROBLEM

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them

CLASS INTERFACE

```Ruby
class MusicTracks
    def initialise
    # tracks: an empty array which tracks tracks listened to
    end

    def add_track
    # push tracks to tracks array
    end

    def show_tracks
    # return the track array as a comma seperated list
    end
end
```

EXAMPLES

```Ruby
    #1
    music = MusicTracks.new
    music.add_track("track1")
    music.show_tracks # => "track1"

    # 2
    music = MusicTracks.new
    music.add_track("track1")
    music.add_track("track2")
    music.show_tracks # => "track1, track2"

    #2
    music = MusicTracks.new
    music.show_tracks # => fail with "No tracks"
```
