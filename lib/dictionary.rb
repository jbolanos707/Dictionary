class Dictionary
attr_reader(:word, :definition)

  define_singleton_method(:clear) do
    @@words = []
  end


  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
  end


  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

end
