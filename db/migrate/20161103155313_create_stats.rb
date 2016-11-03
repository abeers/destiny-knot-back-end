class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :damage_class_id
      t.string :identifier
      t.integer :is_battle_only
      t.integer :game_index

      t.timestamps null: false
    end
  end
end
