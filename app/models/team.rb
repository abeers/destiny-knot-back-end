class Team < ActiveRecord::Base
  has_many :team_members, dependent: :destroy
  has_many :pokemons, through: :team_members
  belongs_to :user
end
