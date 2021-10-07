require 'json'

user = User.create(username: 'usuario_fernando',age: 55, country: 'Argentina')

movies_json = File.read(Rails.root.join('db','movies.json'))

movies_hash = JSON.parse(movies_json)

puts 'creando peliculas...'

movies_hash.each do |m|
  Movie.create!(title: m['title'], description: m['overview'], price: rand(100), user: user)
end

puts 'peliculas creadas!!!'