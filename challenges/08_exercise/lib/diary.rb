class Diary
    def initialize
      @entries = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
      # Returns nothing
      @entries << entry
    end
  
    def all
      # Returns a list of instances of DiaryEntry
      return @entries
    end
  
    def count_words
      if @entries.length < 1
        return fail "No entries to count"
      end
      # Returns the number of words in all diary entries
      # HINT: This method should make use of the `count_words` method on DiaryEntry.
      num_of_words = 0
      @entries.each { |entry| num_of_words += entry.count_words }
      return num_of_words
    end
  
    def reading_time(wpm) # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # if the user were to read all entries in the diary.

      # => loops over entries and runs diary_entry.reading_time on each, then sums them and divides 
      # by wpm (the value passed in) to give an estimate for how long it would take to read whole diary
      reading_time_sum = 0
      @entries.each { |entry| reading_time_sum += entry.reading_time(wpm) }
      return reading_time_sum
      # return 1
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
      # return ('I ate breakfast today, it was lovely')

          # => given 20 wpm and 2 minutes, the user can read 40 words. 
    # call DiaryEntry.count_words on the title and content of each entry. 
    # return the entry which is closest to, but not over 40.
      user_can_read = wpm * minutes #20
      least_difference = (user_can_read - @entries[0].count_words).abs
      least_different = @entries[0].contents

      @entries.each do |entry|

        difference = (user_can_read - entry.count_words).abs

        if difference < least_difference
          least_difference = difference
          least_different = entry.contents
        end
  
      end
      return least_different
    end
  end