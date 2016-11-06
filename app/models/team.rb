class Team < ActiveRecord::Base
  has_many :team_members
  has_many :pokemons, through: :team_members
end
