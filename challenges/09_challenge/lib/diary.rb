class Diary
    def initialize
        # track entries
        @entries = []
        # mob nums - arr of instances of mobile numbers
        # each instance has .get_num which returns a string
        @mob_num_instances = []
    end

    def add_num_instance(num_instance)
        # adds to mob num instance arr
        @mob_num_instances << num_instance
    end

    def add_entry(entry)
        # add entries to the diary - entry is string
        @entries << entry
    end

    def read_entries

        if @entries.length < 1
            fail "no entries"
        end

        # return diary entries - 1. entry, 2. mob nums
        entries_and_nums = []
        all_nums = @mob_num_instances.map{ |num_instance| num_instance.get_num }

        @entries.each do |entry|
            output = [entry, all_nums]
            entries_and_nums.push(output)
        end
        return entries_and_nums
    end

    def select_entry(time, wpm)
        # return entry based on time available and reading speed(wpm)
        # - consider entry only, not mob nums
        words = time * wpm # 10

        least_difference = (words - @entries[0].split(' ').length).abs
        p least_difference
        recommended_entry = @entries[0]


        @entries.each do |entry|
            difference = (words - entry.split(' ').length).abs
            # p difference
            if difference < least_difference
                least_difference = difference
                recommended_entry = entry
            end
        end
        all_nums = @mob_num_instances.map{ |num_instance| num_instance.get_num }
        return [[recommended_entry], all_nums]
    end

end