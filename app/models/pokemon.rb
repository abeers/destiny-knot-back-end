class Pokemon < ActiveRecord::Base
  has_many :pokemon_stats
  has_many :stats, through: :pokemon_stats
  has_many :pokemon_abilities
  has_many :abilities, through: :pokemon_abilities
  has_many :pokemon_types
  has_many :types, through: :pokemon_types
end
