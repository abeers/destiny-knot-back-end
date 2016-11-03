class PokemonType < ActiveRecord::Base
  belongs_to :pokemon, inverse_of: :pokemon_types
  belongs_to :type, inverse_of: :pokemon_types
end
