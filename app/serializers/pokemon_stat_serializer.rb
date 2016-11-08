class PokemonStatSerializer < ActiveModel::Serializer
  attributes :id, :base_stat, :effort, :stat
  # has_one :pokemon
  # has_one :stat
end
