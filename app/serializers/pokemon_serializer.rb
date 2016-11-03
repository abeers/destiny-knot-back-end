class PokemonSerializer < ActiveModel::Serializer
  attributes :identifier, :species_id, :types, :pokemon_stats, :abilities
end
