class PokemonAbility < ActiveRecord::Base
  belongs_to :pokemon, inverse_of: :pokemon_abilities
  belongs_to :ability, inverse_of: :pokemon_abilities
end
