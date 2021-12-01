# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
for i in 1..450
  Wild.new(name: PokeApi.get(pokemon: i).name,
           image: PokeApi.get(pokemon: i).sprites.front_default,
           hp: PokeApi.get(pokemon: i).stats.first.base_stat,
           attack: PokeApi.get(pokemon: i).stats.second.base_stat,
           defense: PokeApi.get(pokemon: i).stats.third.base_stat,
           special_attack: PokeApi.get(pokemon: i).stats.fourth.base_stat,
           special_defense: PokeApi.get(pokemon: i).stats.fifth.base_stat,
           speed: PokeApi.get(pokemon: i).stats.last.base_stat).save!
end
