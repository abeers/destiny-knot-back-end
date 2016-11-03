# Pokemon.create([
#                 { identifier: 'bulbasaur', species_id: 1, height: 7, weight: 69,
#                   base_experience: 64, order: 1, is_default: 1 }
#                ])

require 'csv'

CSV.foreach('lib/csv/pokemon.csv', headers: true) do |row|
  Pokemon.create!(row.to_hash)
end

CSV.foreach('lib/csv/stats.csv', headers: true) do |row|
  Stat.create!(row.to_hash)
end

CSV.foreach('lib/csv/pokemon_stats.csv', headers: true) do |row|
  PokemonStat.create!(row.to_hash)
end
