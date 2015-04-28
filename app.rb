require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/place')

get('/')do
  @place_list = Place.all()
  erb(:index)
end

post('/place_saved') do
  description = params.fetch('name')
  place = Place.new(name)
  place.save()
  erb(:place_saved)
end
