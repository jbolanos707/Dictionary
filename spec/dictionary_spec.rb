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

  describe('.all') do
    it("should be an empty array at first") do
      expect(Dictionary.all()).to(eq([]))
    end
  end




end
