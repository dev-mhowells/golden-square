INTEGRATION TEST EXAMPLES

```Ruby
    # all - return a list of entries
    diary = diary.new
    entry1 = diaryEntry('first entry', 'I ate breakfast')
    entry2 = diaryEntry('second entry', 'I ate lunch')
    diary.add(entry1)
    diary.add(entry2)
    diary.all # => [entry1, entry2]

    # count_words
    diary = diary.new
    entry1 = diaryEntry('first entry', 'I ate breakfast')
    entry2 = diaryEntry('second entry', 'I ate lunch')
    diary.add(entry1)
    diary.add(entry2)
    diary.count_words # => loops over entries and runs diaryEntry.count_words on each, then sums them

    # reading_time
    diary = diary.new
    entry1 = diaryEntry('first entry', 'I ate breakfast')
    entry2 = diaryEntry('second entry', 'I ate lunch')
    diary.add(entry1)
    diary.add(entry2)
    diary.reading_time(wpm) # => loops over entries and runs diary_entry.reading_time on each, then sums them and divides by wpm (the value passed in) to give an estimate for how long it would take to read whole diary

    # find_best...
    diary = diary.new
    entry1 = diaryEntry('first entry', 'I ate breakfast')
    entry2 = diaryEntry('second entry', 'I ate lunch')
    diary.add(entry1)
    diary.add(entry2)
    diary.find_best_entry_for_reading_time(wpm, minutes) # => given 20 wpm and 2 minutes, the user can read 40 words. call DiaryEntry.count_words on the title and content of each entry. return the entry which is closest to, but not over 40.
```