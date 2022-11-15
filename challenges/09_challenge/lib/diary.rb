class Diary
    def initialize
        # track entries
        @entries = []
        # mob nums - arr of instances of mobile numbers
        # each instance has .get_num which returns a string
        @mob_nums = []
    end

    def add_num_instance(num_instance)
        # adds to mob num instance arr
        # @mob_num_instances << num_instance
        @mob_nums << num_instance.get_num
    end

    def add_entry(entry)
        # add entries to the diary - entry is string
        @entries << entry
    end

    def read_entries

        if @entries.empty?
            fail "no entries"
        end

        # return diary entries - 1. entry, 2. mob nums
        entries_and_nums = []

        @entries.each do |entry|
            # output = [entry, all_nums]
            output = [entry, @mob_nums]
            entries_and_nums.push(output)
        end
        return entries_and_nums
    end

    def select_entry(time, wpm)

        if @entries.empty?
            fail "no entries"
        end
        # return entry based on time available and reading speed(wpm)
        # - consider entry only, not mob nums
        words = time * wpm # 10

        least_difference = (words - @entries[0].split(' ').length).abs

        recommended_entry = @entries[0]


        @entries.each do |entry|
            difference = (words - entry.split(' ').length).abs

            if difference < least_difference
                least_difference = difference
                recommended_entry = entry
            end
        end

        return [recommended_entry, @mob_nums]
    end

end