class User < ActiveRecord::Base
  include Authentication
  has_many :teams
  has_many :team_members
end
