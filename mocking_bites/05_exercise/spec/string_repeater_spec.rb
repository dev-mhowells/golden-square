require 'string_repeater'

RSpec.describe StringRepeater do
    it 'prtints a string over and over' do
        io = double :io
        expect(io).to receive(:gets).and_return("TWIX")
        expect(io). to receive(:gets).and_return("2")
        expect(io).to receive(:puts).with ("TWIXTWIX")

        repeat = StringRepeater.new(io)
        repeat.run
    end
end