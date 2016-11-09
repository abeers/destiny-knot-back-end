class AddUserToTeamMember < ActiveRecord::Migration
  def change
    add_reference :team_members, :user, index: true, foreign_key: true
  end
end
