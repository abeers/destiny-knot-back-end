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

CSV.foreach('lib/csv/abilities.csv', headers: true) do |row|
  Ability.create!(row.to_hash)
end

CSV.foreach('lib/csv/pokemon_abilities.csv', headers: true) do |row|
  PokemonAbility.create!(row.to_hash)
end

CSV.foreach('lib/csv/types.csv', headers: true) do |row|
  Type.create!(row.to_hash)
end

CSV.foreach('lib/csv/pokemon_types.csv', headers: true) do |row|
  PokemonType.create!(row.to_hash)
end

CSV.foreach('lib/csv/type_efficacy.csv', headers: true) do |row|
  TypeEfficacy.create!(row.to_hash)
end
