class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.references :team, index: true, foreign_key: true
      t.references :pokemon, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
