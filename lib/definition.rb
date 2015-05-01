class Definition
  define_singleton_method(:clear) do
    @@definitions = []
  end

  define_method(:initialize) do |define|
    @define = define
  end

  define_method(:define) do
    @define
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:all) do
    @@defintions
  end
end
