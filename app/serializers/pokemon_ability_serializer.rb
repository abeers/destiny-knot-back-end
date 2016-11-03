class PokemonAbilitySerializer < ActiveModel::Serializer
  attributes :id, :is_hidden, :slot
  has_one :pokemon
  has_one :ability
end
