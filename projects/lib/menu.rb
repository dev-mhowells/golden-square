class Menu
    def initialize(io)
        @io = io

        @menu = {
            "carbonara": "22.00",
            "bacon sandwich": "34.00",
            "mushroom pizza": "6.00",
            "vegetarian burger": "11.00"
        }
    end

    def menu
        return @menu
    end

    def print_menu
        @menu.each { |item, price| @io.puts "#{item}: #{price}"}
    end
end