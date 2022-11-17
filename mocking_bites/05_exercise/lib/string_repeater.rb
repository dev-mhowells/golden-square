class StringRepeater
    def initialize(io)
        @io = io
    end

    def run
        puts "Hello. I will repeat a string many times."
        puts "Please enter a string"
        str = @io.gets.chomp
        puts "please enter a number of repeats"
        num = @io.gets.chomp.to_i
        puts "Here is your result:"
        @io.puts str * num
    end
end

# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX