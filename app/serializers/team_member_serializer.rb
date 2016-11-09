class TeamMemberSerializer < ActiveModel::Serializer
  attributes :id
  # has_one :team
  has_one :pokemon
  belongs_to :user
end
