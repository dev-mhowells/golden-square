require "check_codeword"

RSpec.describe "check_codeword method" do
    it "checks if string matches codeword" do
        result = check_codeword("horse")
        expect(result) == "Correct! Come in."
    end
    it "checks if string is close to codeword" do
        result = check_codeword("hose")
        expect(result) == "Close, but nope."
    end
    it "checks if codeword is wrong" do
        result = check_codeword("blah")
        expect(result) == "WRONG!"
    end
end