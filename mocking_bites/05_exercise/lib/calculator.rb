class InteractiveCalculator
    def initialize(io)
        @io = io
    end

    def run
        puts "please enter a number"
        num1 = @io.gets.chomp.to_i
        puts "please enter another number"
        num2 = @io.gets.chomp.to_i
        puts "here is your result"
        @io.puts num1 - num2
    end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1