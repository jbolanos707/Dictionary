class Dictionary
  @@words = []
  
  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:initialize) do |word|
    @word = word

  end

  define_method(:word) do
    @word
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:add_definiton) do |define|
    @define = define
  end
end
