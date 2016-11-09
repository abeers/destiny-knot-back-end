class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  # has_many :pokemons
  has_many :team_members
  belongs_to :user
end
