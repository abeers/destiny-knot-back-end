class PokemonStatSerializer < ActiveModel::Serializer
  attributes :id, :base_stat, :effort
  has_one :pokemon
  has_one :stat
end
