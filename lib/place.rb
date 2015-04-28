class Place

@@places = []

  define_method(:initialize) do |name|
    @name = name
  end

    define_singleton_method(:all) do
      @@places
    end

    define_method(:save) do
      @@places.push(self)
    end

end
