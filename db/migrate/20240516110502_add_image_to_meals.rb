class AddImageToMeals < ActiveRecord::Migration[7.1]
  def change
    add_column :meals, :image, :string
  end
end
