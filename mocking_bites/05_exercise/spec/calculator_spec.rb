require 'calculator'

RSpec.describe InteractiveCalculator do
    it "subtracts one number from another" do
        io = double :io
        expect(io).to receive(:gets).and_return("10")
        expect(io).to receive(:gets).and_return("5")
        expect(io).to receive(:puts).with(5)

        calc = InteractiveCalculator.new(io)
        calc.run
    end
end

