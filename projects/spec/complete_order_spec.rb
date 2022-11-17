require 'complete_order'

RSpec.describe CompleteOrder do

    it "prints an itemized receipt" do
        io = double :io
        expect(io).to receive(:puts).with("carbonara: 22.00")
        expect(io).to receive(:puts).with("mushroom pizza: 6.00")
        expect(io).to receive(:puts).with("total: £28")

        orders = double :take_orders, get_all_orders: {"carbonara": "22.00", "mushroom pizza": "6.00"}
        
        complete = CompleteOrder.new(io, orders)
        complete.print_receipt 
    end

    it "fails" do
        io = double :io

        orders = double :take_orders, get_all_orders: {}
        
        complete = CompleteOrder.new(io, orders)
        expect{complete.print_receipt}.to raise_error 'no orders'
    end

end