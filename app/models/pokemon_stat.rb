class PokemonStat < ActiveRecord::Base
  belongs_to :pokemon, inverse_of: :pokemon_stats
  belongs_to :stat, inverse_of: :pokemon_stats
end
