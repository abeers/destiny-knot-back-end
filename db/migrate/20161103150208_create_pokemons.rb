class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :identifier
      t.integer :species_id
      t.integer :height
      t.integer :weight
      t.integer :base_experience
      t.integer :order
      t.integer :is_default

      t.timestamps null: false
    end
  end
end
