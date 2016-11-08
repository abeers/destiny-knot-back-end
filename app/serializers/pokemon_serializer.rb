class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :identifier, :species_id
  has_many :types
  has_many :pokemon_stats
  has_many :abilities
end
