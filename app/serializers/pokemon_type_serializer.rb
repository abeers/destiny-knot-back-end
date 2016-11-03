class PokemonTypeSerializer < ActiveModel::Serializer
  attributes :id, :slot
  has_one :pokemon
  has_one :type
end
