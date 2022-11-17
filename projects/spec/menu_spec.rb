require 'menu'

RSpec.describe Menu do

    it 'prints the menu line by line' do
        io = double :io
        expect(io).to receive(:puts).with("carbonara: 22.00")
        expect(io).to receive(:puts).with("bacon sandwich: 34.00")
        expect(io).to receive(:puts).with("mushroom pizza: 6.00")
        expect(io).to receive(:puts).with("vegetarian burger: 11.00")

        menu = Menu.new(io)
        menu.print_menu 
    end
    
end
