class TeamMember < ActiveRecord::Base
  belongs_to :team, inverse_of: :team_members
  belongs_to :pokemon, inverse_of: :team_members
end
