class CreatePokemonAbilities < ActiveRecord::Migration
  def change
    create_table :pokemon_abilities do |t|
      t.references :pokemon, index: true, foreign_key: true
      t.references :ability, index: true, foreign_key: true
      t.integer :is_hidden
      t.integer :slot

      t.timestamps null: false
    end
  end
end
