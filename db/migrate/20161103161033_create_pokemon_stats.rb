class CreatePokemonStats < ActiveRecord::Migration
  def change
    create_table :pokemon_stats do |t|
      t.references :pokemon, index: true, foreign_key: true
      t.references :stat, index: true, foreign_key: true
      t.integer :base_stat
      t.integer :effort

      t.timestamps null: false
    end
  end
end
