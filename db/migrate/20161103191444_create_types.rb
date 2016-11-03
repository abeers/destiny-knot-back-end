class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :identifier
      t.integer :generation_id
      t.integer :damage_class_id

      t.timestamps null: false
    end
  end
end
