class Pokemon < ActiveRecord::Base
  has_many :pokemon_stats
  has_many :stats, through: :pokemon_stats
end
