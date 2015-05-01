require('rspec')
require('dictionary1')
require('definition')

describe(Dictionary) do

  before() do
    Dictionary.clear
  end

  describe('#word') do
    it("returns the word") do
      test_word = Dictionary.new("kid")
      expect(test_word.word()).to(eq("kid"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Dictionary.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a word to the array of saved words") do
      test_word = Dictionary.new("puppy")
      test_word.save()
      expect(Dictionary.all()).to(eq([test_word]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved words") do
      Dictionary.new("puppy").save()
      Dictionary.clear()
      expect(Dictionary.all()).to(eq([]))
    end
  end

  describe('#add_definition') do
    it("adds a definition to a word") do
      test_word = Dictionary.new("kid")
      test_definition = Definition.new("young person")
      expect(test_word.test_definition.add_definition()).to(eq("young person"))
    end
  end

end

describe(Definition) do

  before() do
    Definition.clear
  end

  describe('#define') do
    it("lets you give it a definition") do
      test_definition = Definition.new("young person")
      expect(test_definition.define()).to(eq("young person"))
    end
  end

end
