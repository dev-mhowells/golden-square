require 'take_orders'
require 'menu'

RSpec.describe TakeOrders do

    it "returns all orders" do
        io = double :io

        menu = Menu.new(io)
        orders = TakeOrders.new(io, menu)
        expect(io).to receive(:gets).and_return('carbonara')
        expect(io).to receive(:gets).and_return('mushroom pizza')
        orders.select_item
        orders.select_item
        expect(orders.get_all_orders).to eq("carbonara": "22.00", "mushroom pizza": "6.00")
    end

    it "fails" do
        io = double :io

        expect(io).to receive(:gets).and_return("carbonara")
        expect(io).to receive(:gets).and_return("chicken pizza")

        menu = Menu.new(io)
        orders = TakeOrders.new(io, menu)
        orders.select_item
        expect{orders.select_item}.to raise_error 'no such item'
        
    end
end