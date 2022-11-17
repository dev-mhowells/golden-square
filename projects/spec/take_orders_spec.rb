require 'take_orders'

RSpec.describe TakeOrders do

    it "returns all orders" do
        io = double :io
        expect(io).to receive(:gets).and_return("carbonara")
        # expect(io).to receive(:gets).and_return("mushroom pizza")

        menu = double :menu, menu: {'carbonara': '22.00'}
        orders = TakeOrders.new(io, menu)
        orders.select_item
        # orders.select_item("carbonara")
        # orders.select_item("mushroom pizza")
        expect(orders.get_all_orders).to eq("carbonara": "22.00")
    end

end
