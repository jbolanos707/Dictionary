class Definition
@@definitions = []

  define_method(:initialize) do |definition|
    @defintion = definition
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:all) do
    @@defintions
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end
end
