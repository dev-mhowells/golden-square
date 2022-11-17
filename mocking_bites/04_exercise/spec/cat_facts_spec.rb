require 'cat_facts'

RSpec.describe CatFacts do
    it "returns cat facts" do
        requester_dbl = double :requester
        expect(requester_dbl).to receive(:get)
        .with(URI("https://catfact.ninja/fact"))
        .and_return("{\"fact\":\"Female cats tend to be right pawed, while male cats are more often left pawed. Interestingly, while 90% of humans are right handed, the remaining 10% of lefties also tend to be male.\",\"length\":182}")

        fact = CatFacts.new(requester_dbl)
        result = fact.provide
        expect(result).to eq "Cat fact: Female cats tend to be right pawed, while male cats are more often left pawed. Interestingly, while 90% of humans are right handed, the remaining 10% of lefties also tend to be male."
    end
end