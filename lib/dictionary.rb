class Dictionary
attr_reader(:word, :definition)

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
  end
end
