require "report_length"

RSpec.describe "report_length method" do
    it "gives the length of a string passed in" do
        result = report_length("12345")
        expect(result).to eq "This string was 5 characters long."
    end
end