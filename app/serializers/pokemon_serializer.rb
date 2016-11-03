class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :identifier, :species_id, :height, :weight, :base_experience, :order, :is_default
end
