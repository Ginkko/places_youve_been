require('rspec')
require('place')
require('pry')

describe(Place) do
  before() do
    Place.clear()
  end

  describe('.all') do
    it('returns all elements of place') do
      expect(Place.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves all data to the list of places') do
      test_place = Place.new('Portland')
      test_place.save()
      #expect(Place.all()).to(eq(['Portland']))
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe('#name') do
    it('Allows adding a name') do
      test_place = Place.new("San Testo")
      expect(test_place.name()).to(eq("San Testo"))
    end
  end

  describe('.clear') do
    it('clears all saved places') do
      Place.new('San Testo').save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

end
