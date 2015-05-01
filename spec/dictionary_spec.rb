require('rspec')
require('dictionary')
require('definition')

describe(Dictionary) do

  before() do
    Dictionary.clear
  end

  describe('#word') do
    it("returns the word") do
      test_dictionary = Dictionary.new({:word => "kid"})
      expect(test_dictionary.word()).to(eq("kid"))
    end
  end

  describe('.all') do
    it("should be empty at first") do
      expect(Dictionary.all()).to(eq([]))
    end
  end

  describe('.save') do
    it("saves the word to the class") do
      test_dictionary = Dictionary.new({:word => "kid"})
      test_dictionary.save()
      test_dictionary2 = Dictionary.new({:word => "dog"})
      test_dictionary2.save()
      expect(Dictionary.all()).to(eq([test_dictionary, test_dictionary2]))
    end
  end

  describe(".clear") do
    it("clears array of saved words") do
      test_dictionary = Dictionary.new({:word => "kid"}).save()
      test_dictionary.clear()
      expect(Dictionary.all()).to(eq([]))
    end
  end








end
