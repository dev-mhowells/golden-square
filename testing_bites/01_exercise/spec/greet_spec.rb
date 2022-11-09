require 'greet.rb'

RSpec.describe "greet method" do
    it "greets user by name" do
        result = greet("billy")
        expect(result).to eq "Hello, billy"
    end
end