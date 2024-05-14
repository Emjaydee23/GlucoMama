class CreateMeals < ActiveRecord::Migration[7.1]
  def change
    create_table :meals do |t|
      t.string :timing
      t.string :name
      t.text :note
      t.string :threshold
      t.text :recipe

      t.timestamps
    end
  end
end
