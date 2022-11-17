class CompleteOrder

    def initialize(io, orders) # => takes instance of ManageOrder
        # => hash of orders
        @io = io
        @orders = orders
    end

    def print_receipt
        # => calls on clac_tot
        # => prints itemized orders
        p @orders.get_all_orders.empty?
        fail "no orders" if @orders.get_all_orders.empty? == true
        total = 0
        @orders.get_all_orders.each do |item, price| 
            @io.puts "#{item}: #{price}"
            total += price.to_i
        end
        @io.puts "total: £#{total}"
    end

    def register_order
        # indicate to customer order has been placed
    end

end