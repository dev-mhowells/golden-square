require "mobnumbers"

RSpec.describe MobileNumbers do
    it "returns the passed in num" do
        num1 = MobileNumbers.new('123')
        expect(num1.get_num).to eq '123'
    end
end