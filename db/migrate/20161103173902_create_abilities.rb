class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :identifier
      t.integer :generation_id
      t.integer :is_main_series

      t.timestamps null: false
    end
  end
end
