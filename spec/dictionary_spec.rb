require('rspec')
require('dictionary')
require('definition')

describe(Dictionary) do

  describe('#word') do
    it("returns the word to be defined") do
      test_word = Dictionary.new({:word => "kid"})
      expect(test_word.word).to(eq("kid"))
    end
  end


end
