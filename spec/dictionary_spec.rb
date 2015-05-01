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

  describe('.save') do
    it("saves the word to the class") do
      test_word = Dictionary.new({:word => "kid"})
      test_word.save()
      test_word2 = Dictionary.new({:word => "dog"})
      test_word2.save()
      expect(Dictionary.all()).to(eq([test_word, test_word2]))
    end
  end





end
