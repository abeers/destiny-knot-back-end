class CreateTypeEfficacies < ActiveRecord::Migration
  def change
    create_table :type_efficacies do |t|
      t.integer :damage_type_id, null: false
      t.integer :target_type_id, null: false
      t.integer :damage_factor

      t.timestamps null: false
    end
  end
end
