class Type < ActiveRecord::Base
  has_many :pokemon_types
  has_many :pokemons, through: :pokemon_types
  has_many :type_efficacies, foreign_key: :target_type_id
  has_many :types, through: :type_efficacies, source: :damage_type_id
end
