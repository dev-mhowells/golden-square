require 'check_string'

RSpec.describe "check_string method" do

    it "returns false when passed an empty string" do
    result = check_string("")
    expect(result).to eq false
    end

    it "returns true when passed a string which contains '#TODO" do
    result = check_string("this is a #TODO string")
    expect(result).to eq true
    end

        it "returns false when passed a string which does not contain '#TODO" do
        result = check_string("this is a string")
        expect(result).to eq false
        end
end