class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.integer :prep_time
      t.references :user_id, foreign_key: true
      t.integer :cook_time
      t.integer :serving_size
      t.string :pot_mode
      t.string :pot_pressure
      t.string :ingredient
      t.string :prep_instruction

      t.timestamps
    end
  end
end
