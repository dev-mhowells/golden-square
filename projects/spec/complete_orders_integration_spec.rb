require 'complete_order'

RSpec.describe CompleteOrder do
    
    it "prints an itemized receipt" do
        io = double :io

        menu = Menu.new(io)
        orders = TakeOrders.new(io, menu)
        expect(io).to receive(:gets).and_return('carbonara')
        expect(io).to receive(:gets).and_return('mushroom pizza')
        orders.select_item
        orders.select_item
        
        complete = CompleteOrder.new(io, orders)
        expect(io).to receive(:puts).with("carbonara: 22.00")
        expect(io).to receive(:puts).with("mushroom pizza: 6.00")
        expect(io).to receive(:puts).with("total: £28")
        complete.print_receipt 
    end

end