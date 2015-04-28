require('rspec')
require('place')
require('pry')

describe(Place) do

  describe('.all') do
    it('returns all elements of place') do
      expect(Place.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a place to the list of places') do
      test_place = Place.new('Portland')
      test_place.save()
      #expect(Place.all()).to(eq(['Portland']))
      expect(Place.all()).to(eq([test_place]))
    end

  end

end
