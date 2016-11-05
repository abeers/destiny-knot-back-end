class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :identifier, :species_id, :types, :pokemon_stats, :abilities
end
