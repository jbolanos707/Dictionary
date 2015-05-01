require('rspec')
require('dictionary')
require('definition')

describe(Dictionary) do

  before() do
    Dictionary.clear
  end

  describe('#word') do
    it("returns the word") do
      test_word = Dictionary.new({:word => "kid", :definition => "young person"})
      expect(test_word.word()).to(eq("kid"))
    end
  end

  describe('.all') do
    it("should be empty at first") do
      expect(Dictionary.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves the word to the class") do
      test_word = Dictionary.new({:word => "kid", :definition => "young person"})
      test_word.save()
      test_word2 = Dictionary.new({:word => "dog", :definition => "man's best friend"})
      test_word2.save()
      expect(Dictionary.all()).to(eq([test_word, test_word2]))
    end
  end

end

describe(Definition) do
  before() do
    Definition.clear()
  end


end
