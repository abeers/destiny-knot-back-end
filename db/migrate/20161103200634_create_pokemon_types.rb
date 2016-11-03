class CreatePokemonTypes < ActiveRecord::Migration
  def change
    create_table :pokemon_types do |t|
      t.references :pokemon, index: true, foreign_key: true
      t.references :type, index: true, foreign_key: true
      t.integer :slot

      t.timestamps null: false
    end
  end
end
