require('rspec')
require('place')
require('pry')

describe(Place) do
  describe('.all') do
    it('returns all elements of place') do
      expect(Place.all()).to(eq([]))
    end
  end

end
