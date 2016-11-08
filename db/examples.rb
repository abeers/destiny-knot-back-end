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

Team.create([
              { name: "Solum's Core" },
              { name: "Mothim is Awe-thim"}
            ])

TeamMember.create([
                    { team_id: 1, pokemon_id: 561 },
                    { team_id: 1, pokemon_id: 10009 },
                    { team_id: 1, pokemon_id: 248 },
                    { team_id: 1, pokemon_id: 212 },
                    { team_id: 1, pokemon_id: 385 },
                    { team_id: 1, pokemon_id: 445 },
                    { team_id: 2, pokemon_id: 414 },
                    { team_id: 2, pokemon_id: 573 },
                    { team_id: 2, pokemon_id: 82 }
                  ])
