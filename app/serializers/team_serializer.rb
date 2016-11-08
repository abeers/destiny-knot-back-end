class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  # has_many :pokemons
  has_many :team_members
end
