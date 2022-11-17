class TakeOrders
    def initialize(io, menu) # menu is key, val if pass only hash // instance of menu if pass class
        # => hash with orders and prices
        @io = io
        @menu = menu
        @all_orders = {}
    end

    def get_all_orders
        # => returns all orders hash
        @all_orders
    end

    def select_item
        # checks if item is selectable (needs access to menu)
        # gets item name, pushes to hash
        selection = @io.gets.chomp
        @all_orders[selection.to_sym] = @menu.menu[selection.to_sym]
    end
end